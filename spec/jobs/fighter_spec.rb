require_relative '../../jobs/fighter.rb'

describe "Fighter" do
  let(:fighter) { Fighter.new(sex: sex, element: element, equipment: equipment) }
  context "性別が異なる場合" do
    let(:element) { Wind.new }
    let(:equipment) { Sword.new }
    context "男性の場合" do
      let(:sex) { Man.new }
      it "アタックポイントが５ポイント上昇する" do
        expect(sex.attack).to eq 5
      end
      it "スキルがブースト" do
        expect(fighter.skill).to eq "ブースト"
      end
      context "属性が異なる場合" do
        context "風の場合" do
          let(:element) { Wind.new }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(element.attack).to eq 5
            expect(element.defence).to eq 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 30
              end
              it "属性の補正でアタックポイントが20加算され、アタックポイントの合計が60になる" do
                expect(fighter.attack).to eq 60
              end
              it "ディフェンスポイントの合計が40になる" do
                expect(fighter.defence).to eq 40
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 10
              end
              it "属性の補正でアタックポイントが20加算され、アタックポイントの合計が60になる" do
                expect(fighter.attack).to eq 60
              end
              it "ディフェンスポイントの合計が20になる" do
                expect(fighter.defence).to eq 20
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.attack).to eq 20
                expect(equipment.defence).to eq 20
              end
              it "属性の補正でアタックポイントが20加算され、アタックポイントの合計が50になる" do
                expect(fighter.attack).to eq 50
              end
              it "装備の補正でディフェンスポイントが20加算され、ディフェンスポイントの合計が30になる" do
                expect(fighter.defence).to eq 50
              end
            end
          end
        end
        context "水の場合" do
          let(:element) { Water.new }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(element.attack).to eq 10
            expect(element.defence).to eq 5
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 30
              end
              it "アタックポイントの合計が45になる" do
                expect(fighter.attack).to eq 45
              end
              it "ディフェンスポイントの合計が35になる" do
                expect(fighter.defence).to eq 35
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 10
              end
              it "アタックポイントの合計が45になる" do
                expect(fighter.attack).to eq 45
              end
              it "ディフェンスポイントの合計が15になる" do
                expect(fighter.defence).to eq 15
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.attack).to eq 20
                expect(equipment.defence).to eq 20
              end
              it "アタックポイントの合計が35になる" do
                expect(fighter.attack).to eq 35
              end
              it "装備の補正でディフェンスポイントが20加算され、ディフェンスポイントの合計が45になる" do
                expect(fighter.defence).to eq 45
              end
            end
          end
        end
        context "雷の場合" do
          let(:element) { Thunder.new }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(element.attack).to eq 15
            expect(element.defence).to eq 0
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 30
              end
              it "アタックポイントの合計が50になる" do
                expect(fighter.attack).to eq 50
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(fighter.defence).to eq 30
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 10
              end
              it "アタックポイントの合計が50になる" do
                expect(fighter.attack).to eq 50
              end
              it "ディフェンスポイントの合計が10になる" do
                expect(fighter.defence).to eq 10
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.attack).to eq 20
                expect(equipment.defence).to eq 20
              end
              it "アタックポイントの合計が40になる" do
                expect(fighter.attack).to eq 40
              end
              it "装備の補正でディフェンスポイントが20加算され、ディフェンスポイントの合計が40になる" do
                expect(fighter.defence).to eq 40
              end
            end
          end
        end
      end
    end
    context "女性の場合" do
      let(:sex) { Woman.new }
      it "ディフェンスポイントが5ポイント上昇する" do
        expect(sex.defence).to eq 5
      end
      it "スキルがカウンター" do
        expect(fighter.skill).to eq "カウンター"
      end
      context "属性が異なる場合" do
        context "風の場合" do
          let(:element) { Wind.new }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(element.attack).to eq 5
            expect(element.defence).to eq 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 30
              end
              it "属性の補正でアタックポイントが20加算され、アタックポイントの合計が55になる" do
                expect(fighter.attack).to eq 55
              end
              it "ディフェンスポイントの合計が45になる" do
                expect(fighter.defence).to eq 45
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 10
              end
              it "属性の補正でアタックポイントが20加算され、アタックポイントの合計が55になる" do
                expect(fighter.attack).to eq 55
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(fighter.defence).to eq 25
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.attack).to eq 20
                expect(equipment.defence).to eq 20
              end
              it "属性の補正でアタックポイントが20加算され、アタックポイントの合計が45になる" do
                expect(fighter.attack).to eq 45
              end
              it "装備の補正でディフェンスポイントが20加算され、ディフェンスポイントの合計が55になる" do
                expect(fighter.defence).to eq 55
              end
            end
          end
        end
        context "水の場合" do
          let(:element) { Water.new }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(element.attack).to eq 10
            expect(element.defence).to eq 5
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 30
              end
              it "アタックポイントの合計が40になる" do
                expect(fighter.attack).to eq 40
              end
              it "ディフェンスポイントの合計が40になる" do
                expect(fighter.defence).to eq 40
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 10
              end
              it "アタックポイントの合計が40になる" do
                expect(fighter.attack).to eq 40
              end
              it "ディフェンスポイントの合計が20になる" do
                expect(fighter.defence).to eq 20
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.attack).to eq 20
                expect(equipment.defence).to eq 20
              end
              it "アタックポイントの合計が30になる" do
                expect(fighter.attack).to eq 30
              end
              it "装備の補正でディフェンスポイントが20加算され、ディフェンスポイントの合計が50になる" do
                expect(fighter.defence).to eq 50
              end
            end
          end
        end
        context "雷の場合" do
          let(:element) { Thunder.new }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(element.attack).to eq 15
            expect(element.defence).to eq 0
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Sword.new }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 30
              end
              it "アタックポイントの合計が45になる" do
                expect(fighter.attack).to eq 45
              end
              it "ディフェンスポイントの合計が35になる" do
                expect(fighter.defence).to eq 35
              end
            end
            context "杖の場合" do
              let(:equipment) { Stick.new }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(equipment.attack).to eq 30
                expect(equipment.defence).to eq 10
              end
              it "アタックポイントの合計が45になる" do
                expect(fighter.attack).to eq 45
              end
              it "ディフェンスポイントの合計が15になる" do
                expect(fighter.defence).to eq 15
              end
            end
            context "グローブの場合" do
              let(:equipment) { Glove.new }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(equipment.attack).to eq 20
                expect(equipment.defence).to eq 20
              end
              it "アタックポイントの合計が35になる" do
                expect(fighter.attack).to eq 35
              end
              it "装備の補正でディフェンスポイントが20加算され、ディフェンスポイントの合計が45になる" do
                expect(fighter.defence).to eq 45
              end
            end
          end
        end
      end
    end
  end
end
