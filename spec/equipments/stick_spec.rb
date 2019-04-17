require_relative '../../equipments/stick.rb'

describe 'Stick' do
  let(:stick) { Stick.new }
  it '攻撃力が30上昇する' do
    expect(stick.attack).to eq 30
  end
  it '防御力が10上昇する' do
    expect(stick.defence).to eq 10
  end
  it '戦士が装備した場合、補正値は0' do
    expect(stick.warrior_correction).to eq 0
  end
  it '魔法使いが装備した場合、補正値で更に20上昇' do
    expect(stick.wizard_correction).to eq 20
  end
  it '武闘家が装備した場合、補正値は0' do
    expect(stick.fighter_correction).to eq 0
  end
end
