require_relative '../../equipments/stick.rb'

describe 'Stick' do
  let(:stick) { Stick.new }
  it '攻撃力が30上昇する' do
    expect(stick.attack).to eq 30
  end
  it '防御力が10上昇する' do
    expect(stick.defence).to eq 10
  end
end
