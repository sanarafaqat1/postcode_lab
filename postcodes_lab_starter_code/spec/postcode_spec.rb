require 'spec_helper'
require_relative '../postcode'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status).to eq 200
    end

    it "should have a results hash" do
      expect(@response).to be_kind_of Hash
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.return_postcode.length).to be_between(5,7).inclusive
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.return_postcode.length).to be_between(1,9).inclusive
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.ordance_survery_easting_value).to be_kind_of Numeric
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.ordance_survery_easting_value).to be_kind_of Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.get_country).to eq("England").or eq("Scotland").or eq("Northern Ireland").or eq("Wales")
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.get_nhs_authority).to be_kind_of String
    end

    it "should return a longitude float value" do
      expect(@postcodesio.get_longitute).to be_kind_of Float
    end

    it "should return a latitude float value" do
      expect(@postcodesio.get_latitude).to be_kind_of Float
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.get_parliamentry_constituency).to be_kind_of String
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.get_european_electoral_region).to be_kind_of String
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.get_primary_care_trust).to be_kind_of String
    end

    it "should return a region string" do
      expect(@postcodesio.get_region).to be_kind_of String
    end

    it "should return a parish string" do
      expect(@postcodesio.get_parish).to be_kind_of String
    end

    it "should return a lsoa string" do
      expect(@postcodesio.get_isoa).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@postcodesio.get_msoa).to be_kind_of String
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.get_admin_district).to be_kind_of String
    end

    it "should return a incode string of three characters" do
      expect(@postcodesio.get_incode).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@postcodesio.get_msoa).to be_kind_of String
    end

    it "should return a incode string of 3-4 characters" do
      expect(@postcodesio.get_outcode).to be_kind_of String
    end
  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes() #Add in array of postcodes
    end

    it "should respond with a status message of 200" do
    end

    it "should return the first query as the first postcode in the response" do
    end

    it "should return the second query as the first postcode in the response" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

  end
end
