require_relative '../../lib/citypay_api_client/utils/direct_post_mac'

describe 'DirectPostMac' do

  it 'should validate mac' do
    expect(DirectPostMac.create('LK123456789', '0123456789ABCDEF'.bytes, "27595", 'OD-12345678')).to eq('163DBAB194D743866A9BCC7FC9C8A88FCD99C6BBBF08D619291212D1B91EE12E')
  end

  it 'should create mac' do
    expect(DirectPostMac.validate('LK123456789', '0123456789ABCDEF'.bytes, "27595", 'OD-12345678', '163DBAB194D743866A9BCC7FC9C8A88FCD99C6BBBF08D619291212D1B91EE12E')).to eq(true)
  end

end