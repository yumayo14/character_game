require_relative '../../elements/thunder.rb'

describe 'Thunder' do
  let(:thunder) { Thunder.new }
  it '攻撃力が15上昇する' do
    expect(thunder.attack).to eq 15
  end
  it '防御力は変わらない' do
    expect(thunder.defence).to eq 0
  end
  it '戦士が雷属性の場合、補正値は0' do
    expect(thunder.warrior_correction).to eq 0
  end
  it '魔法使いが雷属性の場合、補正値で更に5上昇' do
    expect(thunder.wizard_correction).to eq 5
  end
  it '武闘家が雷属性の場合、補正値は0' do
    expect(thunder.fighter_correction).to eq 0
  end
end
