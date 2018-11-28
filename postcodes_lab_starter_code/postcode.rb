require 'httparty'
require 'json'
require_relative './lib/generate_data/generate_data'
class Postcodesio
  include HTTParty
  base_uri 'https://api.postcodes.io'
  attr_accessor :single,:multiple

  def initialize
    @random_postcode_generator = FakePostcode.new
    @single = @random_postcode_generator.random_postcode
    @multiple = @random_postcode_generator.random_postcode
  end

  def get_single_postcode
    @single
  end

  def get_multiple_postcodes
    @multiple
  end

  def get_status
    @single['status']
  end
  def get_two_status
    @multiple['status', 'status']
  end

  def return_postcode
    result = @single['result']['postcode']
    result.gsub('','')
  end

  def return_quality
    @single['result']['quality']
  end

  def ordance_survery_easting_value
    @single['result']['eastings']
  end

  def get_country
  @single['result']['country']
  end

  def get_nhs_authority
  @single['result']['nhs_ha']
  end

  def get_longitute
  @single['result']['longitude']
  end

  def get_latitude
  @single['result']['latitude']
  end

  def get_parliamentry_constituency
  @single['result']['parliamentary_constituency']
  end

  def get_european_electoral_region
  @single['result']['european_electoral_region']
  end

  def get_primary_care_trust
  @single['result']['primary_care_trust']
  end

  def get_region
  @single['result']['region']
  end

  def get_parish
  @single['result']['parish']
  end

  def get_isoa
  @single['result']['lsoa']
  end

  def get_msoa
  @single['result']['msoa']
  end

  def get_admin_district
  @single['result']['codes']['admin_district']
  end

  def get_incode
  @single['result']['incode']
  end

  def get_outcode
  @single['result']['outcode']
  end
end
