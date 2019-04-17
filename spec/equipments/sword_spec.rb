require_relative '../../equipments/sword.rb'

describe 'Sword' do
  let(:sword) { Sword.new }
  it '攻撃力が30上昇する' do
    expect(sword.attack).to eq 30
  end
  it '防御力が30上昇する' do
    expect(sword.defence).to eq 30
  end
  it '戦士が装備した場合、補正値で更に20上昇' do
    expect(sword.warrior_correction).to eq 20
  end
  it '魔法使いが装備した場合、補正値は0' do
    expect(sword.wizard_correction).to eq 0
  end
  it '武闘家が装備した場合、補正値は0' do
    expect(sword.fighter_correction).to eq 0
  end
end
