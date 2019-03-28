require_relative "../../equipments/glove.rb"

describe "Glove" do
  let(:glove) { Glove.new }
  it "攻撃力が20上昇する" do
    expect(glove.offence).to eq(20)
  end
  it "防御力が20上昇する" do
    expect(glove.defence).to eq(20)
  end
end