require_relative "../../../skills/warrior_skills/female_warrior_skill.rb"

describe "FemaleWarriorSkill" do
  let(:female_warrior_skill) { FemaleWarriorSkill.new }
  it "ビッグバンが返る" do
    expect(female_warrior_skill.name).to eq "ビッグバン"
  end
end