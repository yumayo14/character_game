# frozen_string_literal: true

require_relative '../../sexes/man.rb'
require_relative '../../jobs/warrior'
require_relative '../../jobs/wizard'
require_relative '../../jobs/fighter'

describe 'Man' do
  let(:man) { Man.new }
  it '攻撃力が５上昇する' do
    expect(man.attack).to eq 5
  end
  it '防御力は変わらない' do
    expect(man.defence).to eq 0
  end
  context '職業が異なる場合' do
    let(:element) { Wind.new }
    let(:equipment) { Equipment.new }
    context '戦士の場合' do
      let(:warrior) { Warrior.new(sex: man, element: element, equipment: equipment) }
      it 'スキルがギガスラッシュ' do
        expect(warrior.skill).to eq 'ギガスラッシュ'
      end
    end
    context '魔法使いの場合' do
      let(:wizard) { Wizard.new(sex: man, element: element, equipment: equipment) }
      it 'スキルがベギラマ' do
        expect(wizard.skill).to eq 'ベギラマ'
      end
    end
    context '武闘家の場合' do
      let(:fighter) { Fighter.new(sex: man, element: element, equipment: equipment) }
      it 'スキルがブースト' do
        expect(fighter.skill).to eq 'ブースト'
      end
    end
  end
end
