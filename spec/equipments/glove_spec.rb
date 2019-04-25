# frozen_string_literal: true

require_relative '../../equipments/glove.rb'

describe 'Glove' do
  let(:glove) { Glove.new }
  it '攻撃力が20上昇する' do
    expect(glove.attack).to eq 20
  end
  it '防御力が20上昇する' do
    expect(glove.defence).to eq 20
  end
  it '戦士が装備した場合、補正値は0' do
    expect(glove.warrior_correction).to eq 0
  end
  it '魔法使いが装備した場合、補正値は0' do
    expect(glove.wizard_correction).to eq 0
  end
  it '武闘家が装備した場合、補正値でさらに20上昇' do
    expect(glove.fighter_correction).to eq 20
  end
end
