# frozen_string_literal: true

require_relative '../../elements/water.rb'

describe 'Water' do
  let(:water) { Water.new }
  it '攻撃力が10上昇する' do
    expect(water.attack).to eq 10
  end
  it '防御力が5上昇する' do
    expect(water.defence).to eq 5
  end
  it '戦士が水属性の場合、補正値で更に10上昇' do
    expect(water.warrior_correction).to eq 10
  end
  it '魔法使いが水属性の場合、補正値は0' do
    expect(water.wizard_correction).to eq 0
  end
  it '武闘家が水属性の場合、補正値は0' do
    expect(water.fighter_correction).to eq 0
  end
end
