require 'json'
require 'citypay_api_client/models/paylink_card_holder'
require 'citypay_api_client/models/paylink_address'

RSpec.describe CityPayApiClient::PaylinkCardHolder do
  let(:address) do
    CityPayApiClient::PaylinkAddress.new(
      address1: '1 Street',
      address2: 'Area',
      address3: 'City',
      area: 'Zone',
      country: 'GB',
      label: 'Home',
      postcode: 'AA1 1AA'
    )
  end

  let(:fake_data) do
    {
      accept_headers: 'text/html',
      address: address,
      company: 'Widgets Ltd',
      email: 'c@example.com',
      firstname: 'John',
      lastname: 'Doe',
      mobile_no: '07123456789',
      remote_addr: '127.0.0.1',
      title: 'Mr',
      user_agent: 'RSpec'
    }
  end
  let(:model) { described_class.new(fake_data) }

  it 'creates with provided data' do
    expect(model.accept_headers).to eq('text/html')
    expect(model.address).to eq(address)
    expect(model.company).to eq('Widgets Ltd')
    expect(model.email).to eq('c@example.com')
    expect(model.firstname).to eq('John')
    expect(model.lastname).to eq('Doe')
    expect(model.mobile_no).to eq('07123456789')
    expect(model.remote_addr).to eq('127.0.0.1')
    expect(model.title).to eq('Mr')
    expect(model.user_agent).to eq('RSpec')
  end

  it 'mutates attributes with setters' do
    new_address = CityPayApiClient::PaylinkAddress.new(address1: '2 Street')
    model.accept_headers = 'application/json'
    model.address = new_address
    model.company = 'NewCo'
    model.email = 'd@example.com'
    model.firstname = 'Jane'
    model.lastname = 'Smith'
    model.mobile_no = '07000000000'
    model.remote_addr = '10.0.0.1'
    model.title = 'Dr'
    model.user_agent = 'RSpec2'
    expect(model.accept_headers).to eq('application/json')
    expect(model.address).to eq(new_address)
    expect(model.company).to eq('NewCo')
    expect(model.email).to eq('d@example.com')
    expect(model.firstname).to eq('Jane')
    expect(model.lastname).to eq('Smith')
    expect(model.mobile_no).to eq('07000000000')
    expect(model.remote_addr).to eq('10.0.0.1')
    expect(model.title).to eq('Dr')
    expect(model.user_agent).to eq('RSpec2')
  end

  it 'serializes to and from JSON accurately' do
    json = model.to_hash.to_json
    copy = described_class.build_from_hash(JSON.parse(json))
    expect(copy).to eq(model)
  end
end
