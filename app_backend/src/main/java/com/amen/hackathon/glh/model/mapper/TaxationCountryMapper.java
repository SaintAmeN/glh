package com.amen.hackathon.glh.model.mapper;

import com.amen.hackathon.glh.model.TaxationCountry;
import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface TaxationCountryMapper {
    @Mappings({
            @Mapping(target = "id", source = "id"),
            @Mapping(target = "name", source = "name"),
            @Mapping(target = "code", source = "code"),
    })
    TaxationCountryDto taxationCountryToDto(TaxationCountry entity);

    @Mappings({
            @Mapping(target = "id", source = "id"),
            @Mapping(target = "name", source = "name"),
            @Mapping(target = "code", source = "code"),
    })
    TaxationCountry taxationCountryDtoToEntity(TaxationCountryDto dto);
}
