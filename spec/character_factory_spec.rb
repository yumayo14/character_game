require_relative '../character_factory'

describe CharacterFactory do
  describe '#characters(args)' do
    context 'argsがFighterの場合' do
      let(:fighters) { CharacterFactory.all_characters(Fighter) }
      it '武闘家が18人' do
        expect(fighters.count).to eq 18
        expect(fighters.first.class).to eq Fighter
        expect(fighters.last.class).to eq Fighter
      end
      it '1人目は剣を装備した風属性の男性武闘家' do
        expect(fighters.first).to have_attributes(sex: be_an_instance_of(Man))
        expect(fighters.first).to have_attributes(element: be_an_instance_of(Wind))
        expect(fighters.first).to have_attributes(equipment: be_an_instance_of(Sword))
      end
      it '18人目はグローブを装備した雷属性の女性武闘家' do
        expect(fighters.last).to have_attributes(sex: be_an_instance_of(Woman))
        expect(fighters.last).to have_attributes(element: be_an_instance_of(Thunder))
        expect(fighters.last).to have_attributes(equipment: be_an_instance_of(Glove))
      end
    end
    context 'argsがWarriorの場合' do
      let(:warriors) { CharacterFactory.all_characters(Warrior) }
      it '戦士が18人' do
        expect(warriors.count).to eq 18
        expect(warriors.first.class).to eq Warrior
        expect(warriors.last.class).to eq Warrior
      end
      it '1人目は剣を装備した風属性の男性戦士である' do
        expect(warriors.first).to have_attributes(sex: be_an_instance_of(Man))
        expect(warriors.first).to have_attributes(element: be_an_instance_of(Wind))
        expect(warriors.first).to have_attributes(equipment: be_an_instance_of(Sword))
      end
      it '18人目はグローブを装備した雷属性の女性戦士である' do
        expect(warriors.last).to have_attributes(sex: be_an_instance_of(Woman))
        expect(warriors.last).to have_attributes(element: be_an_instance_of(Thunder))
        expect(warriors.last).to have_attributes(equipment: be_an_instance_of(Glove))
      end
    end
    context 'argsがWizardの場合' do
      let(:wizards) { CharacterFactory.all_characters(Wizard) }
      it '魔法使いが18人' do
        expect(wizards.count).to eq 18
        expect(wizards.first.class).to eq Wizard
        expect(wizards.last.class).to eq Wizard
      end
      it '1人目は剣を装備した風属性の男性魔法使いである' do
        expect(wizards.first).to have_attributes(sex: be_an_instance_of(Man))
        expect(wizards.first).to have_attributes(element: be_an_instance_of(Wind))
        expect(wizards.first).to have_attributes(equipment: be_an_instance_of(Sword))
      end
      it '18人目はグローブを装備した雷属性の女性魔法使いである' do
        expect(wizards.last).to have_attributes(sex: be_an_instance_of(Woman))
        expect(wizards.last).to have_attributes(element: be_an_instance_of(Thunder))
        expect(wizards.last).to have_attributes(equipment: be_an_instance_of(Glove))
      end
    end
  end
end
