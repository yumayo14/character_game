require_relative '../../sexes/woman.rb'
require_relative '../../jobs/warrior'
require_relative '../../jobs/wizard'
require_relative '../../jobs/fighter'

describe 'Woman' do
  let(:woman) { Woman.new }
  it '攻撃力は変わらない' do
    expect(woman.attack).to eq 0
  end
  it '防御力が５上昇する' do
    expect(woman.defence).to eq 5
  end
  context '職業が異なる場合' do
    let(:element) { Wind.new }
    let(:equipment) { Equipment.new }
    context '戦士の場合' do
      let(:warrior) { Warrior.new(sex: woman, element: element, equipment: equipment) }
      it 'スキルがビッグバン' do
        expect(warrior.skill).to eq 'ビッグバン'
      end
    end
    context '魔法使いの場合' do
      let(:wizard) { Wizard.new(sex: woman, element: element, equipment: equipment) }
      it 'スキルがメラミ' do
        expect(wizard.skill).to eq 'メラミ'
      end
    end
    context '武闘家の場合' do
      let(:fighter) { Fighter.new(sex: woman, element: element, equipment: equipment) }
      it 'スキルがカウンター' do
        expect(fighter.skill).to eq 'カウンター'
      end
    end
  end
end
