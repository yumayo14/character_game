require_relative '../guild'

describe Guild do
  let(:guild) { Guild.new }
  it 'キャラクターの数は54人' do
    expect(guild.member.count).to eq 54
  end
  it '1人目は剣を装備した風属性の男性武闘家' do
    expect(guild.member.first.class).to eq Fighter
    expect(guild.member.first).to have_attributes(sex: be_an_instance_of(Man))
    expect(guild.member.first).to have_attributes(element: be_an_instance_of(Wind))
    expect(guild.member.first).to have_attributes(equipment: be_an_instance_of(Sword))
  end
  it '54人目はグローブを装備した雷属性の女性魔法使い' do
    expect(guild.member.last.class).to eq Wizard
    expect(guild.member.last).to have_attributes(sex: be_an_instance_of(Woman))
    expect(guild.member.last).to have_attributes(element: be_an_instance_of(Thunder))
    expect(guild.member.last).to have_attributes(equipment: be_an_instance_of(Glove))
  end
end
