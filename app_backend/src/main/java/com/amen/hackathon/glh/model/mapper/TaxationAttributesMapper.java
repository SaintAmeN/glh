package com.amen.hackathon.glh.model.mapper;

import com.amen.hackathon.glh.model.BenchmarkAttributeValue;
import com.amen.hackathon.glh.model.TaxationCountry;
import com.amen.hackathon.glh.model.dto.TaxationAttributeValueDto;
import com.amen.hackathon.glh.model.dto.TaxationCountryDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface TaxationAttributesMapper {
    @Mappings({
            @Mapping(target = "benchmarkAttributeId", source = "id"),
            @Mapping(target = "name_english", source = "entity.attribute.name"),
    })
    TaxationAttributeValueDto attributeValueToDto(BenchmarkAttributeValue entity);

}
