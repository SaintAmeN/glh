package com.amen.hackathon.glh.service;

import com.amen.hackathon.glh.model.ResidencyQuestionAnswer;
import com.amen.hackathon.glh.model.ResidencyQuestionAnswerTranslation;
import com.amen.hackathon.glh.model.ResidencyQuestionTranslation;
import com.amen.hackathon.glh.model.TaxationCountry;
import com.amen.hackathon.glh.model.dto.ResidencyFormAnswerDto;
import com.amen.hackathon.glh.model.dto.ResidencyFormDto;
import com.amen.hackathon.glh.model.dto.ResidencyFormQuestionDto;
import com.amen.hackathon.glh.repository.TaxationCountryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.xml.ws.ServiceMode;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class TaxationResidencyService {
    private final TaxationCountryRepository taxationCountryRepository;

    public ResidencyFormDto getResidencyForm(String countryCode, String language){
        Optional<TaxationCountry> taxationCountryOptional =taxationCountryRepository.findByCode(countryCode);
        if(taxationCountryOptional.isPresent()){
            TaxationCountry taxationCountry = taxationCountryOptional.get();

            List<ResidencyFormQuestionDto> questions = taxationCountry.getResidencyQuestions()
                    .stream()
                    .map(residencyQuestion -> {
                        ResidencyFormQuestionDto dto = new ResidencyFormQuestionDto();
                        dto.setOrder(residencyQuestion.getId());

                        if(language.equalsIgnoreCase("en")){
                            dto.setQuestion(residencyQuestion.getQuestion());
                        }else{
                            for (ResidencyQuestionTranslation translation : residencyQuestion.getTranslations()) {
                                if(language.equalsIgnoreCase(translation.getCountryCode())){
                                    log.info(translation.getTranslation());
                                    dto.setQuestion(translation.getTranslation());
                                    break;
                                }
                            }
                        }

                        List<ResidencyFormAnswerDto> answerDtoList = new ArrayList<>();
                        for (ResidencyQuestionAnswer answer : residencyQuestion.getAnswers()) {
                            ResidencyFormAnswerDto answerDto = new ResidencyFormAnswerDto();
                            answerDto.setResultResidency(answer.getResidencyResult());

                            if(language.equalsIgnoreCase("en")){
                                answerDto.setContent(answer.getAnswer());
                            }else{
                                for (ResidencyQuestionAnswerTranslation translation : answer.getTranslations()) {
                                    if(language.equalsIgnoreCase(translation.getCountryCode())){
                                        answerDto.setContent(translation.getTranslation());
                                        break;
                                    }
                                }
                            }

                            answerDtoList.add(answerDto);
                        }

                        dto.setAnswers(answerDtoList);
                        return dto;
                    }).collect(Collectors.toList());

            return new ResidencyFormDto(countryCode, questions);
        }

        return null;
    }
}
