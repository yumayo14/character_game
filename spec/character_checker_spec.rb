# frozen_string_literal: true

require_relative '../character_checker'
require_relative '../guild'

describe CharacterChecker do
  let(:all_guild_member) { Guild.new.member }
  let(:character_checker) { CharacterChecker.new(all_guild_member) }
  describe '#best_characters' do
    describe 'キャラクターの数は2人' do
      subject { character_checker.best_characters.count }
      it { is_expected.to eq 2 }
    end
    describe '1人目は剣を装備した水属性の男性戦士' do
      subject { character_checker.best_characters.first }
      it { is_expected.to be_an_instance_of(Warrior) }
      it { is_expected.to have_attributes(sex: be_an_instance_of(Man)) }
      it { is_expected.to have_attributes(element: be_an_instance_of(Water)) }
      it { is_expected.to have_attributes(equipment: be_an_instance_of(Sword)) }
    end
    describe '2人目は剣を装備した水属性の女性戦士' do
      subject { character_checker.best_characters.last }
      it { is_expected.to be_an_instance_of(Warrior) }
      it { is_expected.to have_attributes(sex: be_an_instance_of(Woman)) }
      it { is_expected.to have_attributes(element: be_an_instance_of(Water)) }
      it { is_expected.to have_attributes(equipment: be_an_instance_of(Sword)) }
    end
  end
  describe '#best_attackers' do
    describe 'キャラクターの数は2人' do
      subject { character_checker.best_attackers.count }
      it { is_expected.to eq 2 }
    end
    describe '1人目は剣を装備した雷属性の男性戦士' do
      subject { character_checker.best_attackers.first }
      it { is_expected.to be_an_instance_of(Warrior) }
      it { is_expected.to have_attributes(sex: be_an_instance_of(Man)) }
      it { is_expected.to have_attributes(element: be_an_instance_of(Thunder)) }
      it { is_expected.to have_attributes(equipment: be_an_instance_of(Sword)) }
    end
    describe '2人目は杖を装備した雷属性の男性魔法使い' do
      subject { character_checker.best_attackers.last }
      it { is_expected.to be_an_instance_of(Wizard) }
      it { is_expected.to have_attributes(sex: be_an_instance_of(Man)) }
      it { is_expected.to have_attributes(element: be_an_instance_of(Thunder)) }
      it { is_expected.to have_attributes(equipment: be_an_instance_of(Stick)) }
    end
  end
  describe '#best_defenders' do
    describe 'キャラクターの数は1人' do
      subject { character_checker.best_defenders.count }
      it { is_expected.to eq 1 }
    end
    describe 'グローブを装備した風属性の女性武闘家' do
      subject { character_checker.best_defenders.first }
      it { is_expected.to be_an_instance_of(Fighter) }
      it { is_expected.to have_attributes(sex: be_an_instance_of(Woman)) }
      it { is_expected.to have_attributes(element: be_an_instance_of(Wind)) }
      it { is_expected.to have_attributes(equipment: be_an_instance_of(Glove)) }
    end
  end
end
