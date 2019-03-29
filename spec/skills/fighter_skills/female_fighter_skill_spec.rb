require_relative "../../../skills/fighter_skills/female_fighter_skill.rb"

describe "FemaleFighterSkill" do
  let(:female_fighter_skill) { FemaleFighterSkill.new }
  it "カウンターが返る" do
    expect(female_fighter_skill.name).to eq "カウンター"
  end
end