export type TaxationCountryDto = {
  id: number;
  name: string;
  code: string;
};

export type TaxationCountryDetailsDto = {
  id: number;
  name: string;
  code: string;
  attributes: TaxationAttributeValueDto[];
};

export type TaxationAttributeDto = {
  benchmarkAttributeId: number;
  name_english: string;
  name_polish: string;
  name_ukrainian: string;
};

export type TaxationAttributeValueRequestDto = {
  attribute_id: number;
  country_id: number;
  attribute_value:string;
}

export type TaxationAttributeValueDto = {
  benchmarkAttributeId: number;
  name_english: string;
  name_polish: string;
  name_ukrainian: string;
  value: string;
};

export type ResidencyFormDto = {
  countryCode: string;
  questions: ResidencyFormQuestionDto[];
}

export type ResidencyFormQuestionDto = {
  order: number;
  question: string;

  answers: ResidencyFormAnswerDto[];
}

export type ResidencyFormAnswerDto = {
  content : string;
  resultResidency: any;
}
