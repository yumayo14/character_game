require_relative "../../equipments/sword.rb"

describe "Sword" do
  let(:sword) { Sword.new }
  it "攻撃力が30上昇する" do
    expect(sword.attack).to eq(30)
  end
  it "防御力が30上昇する" do
    expect(sword.defence).to eq(30)
  end
end
