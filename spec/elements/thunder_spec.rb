require_relative "../../elements/thunder.rb"

describe "Thunder" do
  let(:thunder) { Thunder.new }
  it "攻撃力が15上昇する" do
    expect(thunder.attack).to eq(15)
  end
  it "防御力は変わらない" do
    expect(thunder.defence).to eq(0)
  end
end