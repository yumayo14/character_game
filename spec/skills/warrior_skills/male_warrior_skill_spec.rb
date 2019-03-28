require_relative "../../../skills/warrior_skills/male_warrior_skill.rb"

describe "MaleWarriorSkill" do
  let(:male_warrior_skill) { MaleWarriorSkill.new }
  it "ギガスラッシュが返る" do
    expect(male_warrior_skill.name).to eq "ギガスラッシュ"
  end
end