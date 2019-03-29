require_relative '../../jobs/wizard.rb'

describe "Wizard" do
  let(:wizard) { Wizard.new(sex: sex, element: element, equipment: equipment) }
  context "性別が異なる場合" do
    let(:element) { Wind.new }
    let(:equipment) { Sword.new }
    context "男性の場合" do
      let(:sex) { Man.new }
      it "アタックポイントが５ポイント上昇する" do
        expect(sex.offence).to be 5
      end
      it "スキルがベギラマ" do
        expect(wizard.skill).to eq("ベギラマ")
      end
      context "属性が異なる場合" do
        context "風の場合" do
          let(:element) { Wind.new }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(element.offence).to be 5
            expect(element.defence).to be 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 30
              end
              it "アタックポイントの合計が40になる" do
                expect(wizard.attack).to be 40
              end
              it "ディフェンスポイントの合計が40になる" do
                expect(wizard.defence).to be 40
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 10
              end
              it "装備の補正でアタックポイントが20加算され、アタックポイントの合計が60になる" do
                expect(wizard.attack).to be 60
              end
              it "ディフェンスポイントの合計が20になる" do
                expect(wizard.defence).to be 20
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.offence).to be 20
                expect(equipment.defence).to be 20
              end
              it "アタックポイントの合計が30になる" do
                expect(wizard.attack).to be 30
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(wizard.defence).to be 30
              end
            end
          end
        end
        context "水の場合" do
          let(:element) { Water.new }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(element.offence).to be 10
            expect(element.defence).to be 5
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 30
              end
              it "アタックポイントの合計が45になる" do
                expect(wizard.attack).to be 45
              end
              it "ディフェンスポイントの合計が35になる" do
                expect(wizard.defence).to be 35
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 10
              end
              it "装備の補正でアタックポイントが20加算され、アタックポイントの合計が65になる" do
                expect(wizard.attack).to be 65
              end
              it "ディフェンスポイントの合計が15になる" do
                expect(wizard.defence).to be 15
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.offence).to be 20
                expect(equipment.defence).to be 20
              end
              it "アタックポイントの合計が35になる" do
                expect(wizard.attack).to be 35
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(wizard.defence).to be 25
              end
            end
          end
        end
        context "雷の場合" do
          let(:element) { Thunder.new }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(element.offence).to be 15
            expect(element.defence).to be 0
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 30
              end
              it "アタックポイントの合計が50になる" do
                expect(wizard.attack).to be 50
              end
              it "属性の補正でディフェンスポイントが5加算され、ディフェンスポイントの合計が35になる" do
                expect(wizard.defence).to be 35
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 10
              end
              it "装備の補正でアタックポイントが20加算され、アタックポイントの合計が70になる" do
                expect(wizard.attack).to be 70
              end
              it "属性の補正でディフェンスポイントが5加算され、ディフェンスポイントの合計が5になる" do
                expect(wizard.defence).to be 15
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.offence).to be 20
                expect(equipment.defence).to be 20
              end
              it "アタックポイントの合計が40になる" do
                expect(wizard.attack).to be 40
              end
              it "属性の補正でディフェンスポイントが5加算され、ディフェンスポイントの合計が25になる" do
                expect(wizard.defence).to be 25
              end
            end
          end
        end
      end
    end
    context "女性の場合" do
      let(:sex) { Woman.new }
      it "ディフェンスポイントが5ポイント上昇する" do
        expect(sex.defence).to be 5
      end
      it "スキルがメラミ" do
        expect(wizard.skill).to eq("メラミ")
      end
      context "属性が異なる場合" do
        context "風の場合" do
          let(:element) { Wind.new }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(element.offence).to be 5
            expect(element.defence).to be 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 30
              end
              it "アタックポイントの合計が35になる" do
                expect(wizard.attack).to be 35
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(wizard.defence).to be 45
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 10
              end
              it "装備の補正でアタックポイントが20加算され、アタックポイントの合計が55になる" do
                expect(wizard.attack).to be 55
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(wizard.defence).to be 25
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.offence).to be 20
                expect(equipment.defence).to be 20
              end
              it "アタックポイントの合計が30になる" do
                expect(wizard.attack).to be 25
              end
              it "ディフェンスポイントの合計が35になる" do
                expect(wizard.defence).to be 35
              end
            end
          end
        end
        context "水の場合" do
          let(:element) { Water.new }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(element.offence).to be 10
            expect(element.defence).to be 5
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 30
              end
              it "アタックポイントの合計が40になる" do
                expect(wizard.attack).to be 40
              end
              it "ディフェンスポイントの合計が40になる" do
                expect(wizard.defence).to be 40
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 10
              end
              it "装備の補正でアタックポイントが20加算され、アタックポイントの合計が60になる" do
                expect(wizard.attack).to be 60
              end
              it "ディフェンスポイントの合計が20になる" do
                expect(wizard.defence).to be 20
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.offence).to be 20
                expect(equipment.defence).to be 20
              end
              it "アタックポイントの合計が30になる" do
                expect(wizard.attack).to be 30
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(wizard.defence).to be 30
              end
            end
          end
        end
        context "雷の場合" do
          let(:element) { Thunder.new }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(element.offence).to be 15
            expect(element.defence).to be 0
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 30
              end
              it "アタックポイントの合計が45になる" do
                expect(wizard.attack).to be 45
              end
              it "属性の補正でディフェンスポイントが5加算され、ディフェンスポイントの合計が40になる" do
                expect(wizard.defence).to be 40
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.offence).to be 30
                expect(equipment.defence).to be 10
              end
              it "装備の補正でアタックポイントが20加算され、アタックポイントの合計が65になる" do
                expect(wizard.attack).to be 65
              end
              it "属性の補正でディフェンスポイントが5加算され、ディフェンスポイントの合計が20になる" do
                expect(wizard.defence).to be 20
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.offence).to be 20
                expect(equipment.defence).to be 20
              end
              it "アタックポイントの合計が35になる" do
                expect(wizard.attack).to be 35
              end
              it "属性の補正でディフェンスポイントが5加算され、ディフェンスポイントの合計が30になる" do
                expect(wizard.defence).to be 30
              end
            end
          end
        end
      end
    end
  end
end