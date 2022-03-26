export type TaxationCountryDto = {
  id: number;
  name: string;
};

export type TaxationAttributeValueDto = {
  attribute_id: number;
  attribute_value:string;
}
export type TaxationAttributeDto = {
  benchmarkAttributeId: number;
  name_english: string;
  name_polish: string;
  name_ukrainian: string;
};
