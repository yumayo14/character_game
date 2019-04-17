require_relative '../../elements/wind.rb'

describe 'Wind' do
  let(:wind) { Wind.new }
  it '攻撃力が５上昇する' do
    expect(wind.attack).to eq 5
  end
  it '防御力が10上昇する' do
    expect(wind.defence).to eq 10
  end
  it '戦士が風属性の場合、補正値は0' do
    expect(wind.warrior_correction).to eq 0
  end
  it '魔法使いが風属性の場合、補正値は0' do
    expect(wind.wizard_correction).to eq 0
  end
  it '武闘家が風属性の場合、補正値で更に20上昇' do
    expect(wind.fighter_correction).to eq 20
  end
end
