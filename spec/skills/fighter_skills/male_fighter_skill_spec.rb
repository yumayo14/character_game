require_relative "../../../skills/fighter_skills/male_fighter_skill.rb"

describe "MaleFighterSkill" do
  let(:male_fighter_skill) { MaleFighterSkill.new }
  it "ブーストが返る" do
    expect(male_fighter_skill.name).to eq "ブースト"
  end
end
