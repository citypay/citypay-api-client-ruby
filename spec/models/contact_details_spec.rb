require 'json'
require 'citypay_api_client/models/contact_details'

RSpec.describe CityPayApiClient::ContactDetails do
  let(:fake_data) do
    {
      address1: '1 A St',
      address2: '2 B St',
      address3: '3 C St',
      area: 'Area1',
      company: 'Comp',
      country: 'GB',
      email: 'a@example.com',
      firstname: 'Jane',
      lastname: 'Doe',
      mobile_no: '111',
      postcode: 'A1',
      telephone_no: '222',
      title: 'Mx'
    }
  end
  let(:model_instance) { described_class.new(fake_data) }

  it 'constructs with all attributes' do
    expect(model_instance.address1).to eq('1 A St')
    expect(model_instance.email).to eq('a@example.com')
  end

  it 'allows setters and getters for each field' do
    model_instance.address1 = 'New1'
    model_instance.address2 = 'New2'
    model_instance.address3 = 'New3'
    model_instance.area = 'Area2'
    model_instance.company = 'Company2'
    model_instance.country = 'US'
    model_instance.email = 'b@example.com'
    model_instance.firstname = 'John'
    model_instance.lastname = 'Smith'
    model_instance.mobile_no = '333'
    model_instance.postcode = 'B2'
    model_instance.telephone_no = '444'
    model_instance.title = 'Mr'
    expect(model_instance.address1).to eq('New1')
    expect(model_instance.address2).to eq('New2')
    expect(model_instance.address3).to eq('New3')
    expect(model_instance.area).to eq('Area2')
    expect(model_instance.company).to eq('Company2')
    expect(model_instance.country).to eq('US')
    expect(model_instance.email).to eq('b@example.com')
    expect(model_instance.firstname).to eq('John')
    expect(model_instance.lastname).to eq('Smith')
    expect(model_instance.mobile_no).to eq('333')
    expect(model_instance.postcode).to eq('B2')
    expect(model_instance.telephone_no).to eq('444')
    expect(model_instance.title).to eq('Mr')
  end

  it 'serializes and deserializes via JSON' do
    json = model_instance.to_hash.to_json
    new_obj = described_class.build_from_hash(JSON.parse(json))
    expect(new_obj).to eq(model_instance)
  end
end
