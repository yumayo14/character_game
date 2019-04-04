require_relative '../../elements/wind.rb'

describe 'Wind' do
  let(:wind) { Wind.new }
  it '攻撃力が５上昇する' do
    expect(wind.attack).to eq(5)
  end
  it '防御力が10上昇する' do
    expect(wind.defence).to eq(10)
  end
end
