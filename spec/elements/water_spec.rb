require_relative '../../elements/water.rb'

describe 'Water' do
  let(:water) { Water.new }
  it '攻撃力が10上昇する' do
    expect(water.attack).to eq 10
  end
  it '防御力が5上昇する' do
    expect(water.defence).to eq 5
  end
end
