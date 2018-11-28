require 'faker'

class FakePostcode
  include HTTParty

  base_uri 'https://api.postcodes.io'

  attr_accessor :postcode
  def random_postcode
    @postcode = JSON.parse(self.class.get("/random/postcodes").body)
  end
  def get_status
    @single['status']
  end
end
# test = Fake_Postcode.new
# puts test.random_postcode
#
# Faker::Config.locale = 'en-GB'
# Faker::Address.postcode
