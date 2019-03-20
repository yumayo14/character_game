require_relative '../warrior.rb'

# letでbindして、contextの中で値を入れるようにする

describe "Warrior" do
  let(:warrior) { Warrior.new(sex, element,equipment) }
  context "性別が異なる場合" do
    let(:element) { Element::Wind }
    let(:equipment) { Equipment::Sword }
    context "男性の場合" do
      let(:sex) { Sex::Men }
      it "アタックポイントが５ポイント上昇する" do
        expect(warrior.sex[:offence]).to be 5
      end
      it "スキルがギガスラッシュ" do
        expect(warrior.skill[:sk]).to eq("ギガスラッシュ")
      end
      context "属性が異なる場合" do
        context "風の場合" do
          let(:element) { Element::Wind }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(warrior.element[:offence]).to be 5
            expect(warrior.element[:defence]).to be 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Equipment::Sword }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 30
              end
              it "アタックポイントが追加で20上昇する" do
                expect(warrior.offence_bonus).to be 20
              end
              it "アタックポイントの合計が60になる" do
                expect(warrior.attack).to be 60
              end
              it "ディフェンスポイントの合計が40になる" do
                expect(warrior.defence).to be 40
              end
            end
            context "杖の場合" do
              let(:equipment) { Equipment::Stick }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 10
              end
              it "アタックポイントの合計が40になる" do
                expect(warrior.attack).to be 40
              end
              it "ディフェンスポイントの合計が20になる" do
                expect(warrior.defence).to be 20
              end
            end
            context "グローブの場合" do
              let(:equipment) { Equipment::Glove }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(warrior.equipment[:offence]).to be 20
                expect(warrior.equipment[:defence]).to be 20
              end
              it "アタックポイントの合計が30になる" do
                expect(warrior.attack).to be 30
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(warrior.defence).to be 30
              end
            end
          end
        end
        context "水の場合" do
          let(:element) { Element::Water }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(warrior.element[:offence]).to be 10
            expect(warrior.element[:defence]).to be 5
          end
          it "ディフェンスポイントが追加で10上昇する" do
            expect(warrior.defence_bonus).to be 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Equipment::Sword }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 30
              end
              it "アタックポイントが追加で20上昇する" do
                expect(warrior.offence_bonus).to be 20
              end
              it "アタックポイントの合計が65になる" do
                expect(warrior.attack).to be 65
              end
              it "ディフェンスポイントの合計が45になる" do
                expect(warrior.defence).to be 45
              end
            end
            context "杖の場合" do
              let(:equipment) { Equipment::Stick }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 10
              end
              it "アタックポイントの合計が45になる" do
                expect(warrior.attack).to be 45
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(warrior.defence).to be 25
              end
            end
            context "グローブの場合" do
              let(:equipment) { Equipment::Glove }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(warrior.equipment[:offence]).to be 20
                expect(warrior.equipment[:defence]).to be 20
              end
              it "アタックポイントの合計が35になる" do
                expect(warrior.attack).to be 35
              end
              it "ディフェンスポイントの合計が35になる" do
                expect(warrior.defence).to be 35
              end
            end
          end
        end
        context "雷の場合" do
          let(:element) { Element::Thunder }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(warrior.element[:offence]).to be 15
            expect(warrior.element[:defence]).to be 0
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Equipment::Sword }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 30
              end
              it "アタックポイントが追加で20上昇する" do
                expect(warrior.offence_bonus).to be 20
              end
              it "アタックポイントの合計が70になる" do
                expect(warrior.attack).to be 70
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(warrior.defence).to be 30
              end
            end
            context "杖の場合" do
              let(:equipment) { Equipment::Stick }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 10
              end
              it "アタックポイントの合計が50になる" do
                expect(warrior.attack).to be 50
              end
              it "ディフェンスポイントの合計が10になる" do
                expect(warrior.defence).to be 10
              end
            end
            context "グローブの場合" do
              let(:equipment) { Equipment::Glove }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(warrior.equipment[:offence]).to be 20
                expect(warrior.equipment[:defence]).to be 20
              end
              it "アタックポイントの合計が40になる" do
                expect(warrior.attack).to be 40
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(warrior.defence).to be 20
              end
            end
          end
        end
      end
    end
    context "女性の場合" do
      let(:sex) { Sex::Women }
      it "ディフェンスポイントが5ポイント上昇する" do
        expect(warrior.sex[:defence]).to be 5
      end
      it "スキルがビッグバン" do
        expect(warrior.skill[:sk]).to eq("ビッグバン")
      end
      context "属性が異なる場合" do
        context "風の場合" do
          let(:element) { Element::Wind }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(warrior.element[:offence]).to be 5
            expect(warrior.element[:defence]).to be 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Equipment::Sword }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 30
              end
              it "アタックポイントが追加で20上昇する" do
                expect(warrior.offence_bonus).to be 20
              end
              it "アタックポイントの合計が55になる" do
                expect(warrior.attack).to be 55
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(warrior.defence).to be 45
              end
            end
            context "杖の場合" do
              let(:equipment) { Equipment::Stick }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 10
              end
              it "アタックポイントの合計が35になる" do
                expect(warrior.attack).to be 35
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(warrior.defence).to be 25
              end
            end
            context "グローブの場合" do
              let(:equipment) { Equipment::Glove }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(warrior.equipment[:offence]).to be 20
                expect(warrior.equipment[:defence]).to be 20
              end
              it "アタックポイントの合計が30になる" do
                expect(warrior.attack).to be 25
              end
              it "ディフェンスポイントの合計が35になる" do
                expect(warrior.defence).to be 35
              end
            end
          end
        end
        context "水の場合" do
          let(:element) { Element::Water }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(warrior.element[:offence]).to be 10
            expect(warrior.element[:defence]).to be 5
          end
          it "ディフェンスポイントが追加で10上昇する" do
            expect(warrior.defence_bonus).to be 10
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Equipment::Sword }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 30
              end
              it "アタックポイントが追加で20上昇する" do
                expect(warrior.offence_bonus).to be 20
              end
              it "アタックポイントの合計が60になる" do
                expect(warrior.attack).to be 60
              end
              it "ディフェンスポイントの合計が50になる" do
                expect(warrior.defence).to be 50
              end
            end
            context "杖の場合" do
              let(:equipment) { Equipment::Stick }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 10
              end
              it "アタックポイントの合計が40になる" do
                expect(warrior.attack).to be 40
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(warrior.defence).to be 30
              end
            end
            context "グローブの場合" do
              let(:equipment) { Equipment::Glove }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(warrior.equipment[:offence]).to be 20
                expect(warrior.equipment[:defence]).to be 20
              end
              it "アタックポイントの合計が30になる" do
                expect(warrior.attack).to be 30
              end
              it "ディフェンスポイントの合計が40になる" do
                expect(warrior.defence).to be 40
              end
            end
          end
        end
        context "雷の場合" do
          let(:element) { Element::Thunder }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(warrior.element[:offence]).to be 15
            expect(warrior.element[:defence]).to be 0
          end
          context "装備が異なる場合" do
            context "剣の場合" do
              let(:equipment) { Equipment::Sword }
              it "アタックポイントが30、ディフェンスポイントが30上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 30
              end
              it "アタックポイントが追加で20上昇する" do
                expect(warrior.offence_bonus).to be 20
              end
              it "アタックポイントの合計が70になる" do
                expect(warrior.attack).to be 65
              end
              it "ディフェンスポイントの合計が30になる" do
                expect(warrior.defence).to be 35
              end
            end
            context "杖の場合" do
              let(:equipment) { Equipment::Stick }
              it "アタックポイントが30、ディフェンスポイントが10上昇する" do
                expect(warrior.equipment[:offence]).to be 30
                expect(warrior.equipment[:defence]).to be 10
              end
              it "アタックポイントの合計が50になる" do
                expect(warrior.attack).to be 45
              end
              it "ディフェンスポイントの合計が10になる" do
                expect(warrior.defence).to be 15
              end
            end
            context "グローブの場合" do
              let(:equipment) { Equipment::Glove }
              it "アタックポイントが20、ディフェンスポイントが20上昇する" do
                expect(warrior.equipment[:offence]).to be 20
                expect(warrior.equipment[:defence]).to be 20
              end
              it "アタックポイントの合計が35になる" do
                expect(warrior.attack).to be 35
              end
              it "ディフェンスポイントの合計が25になる" do
                expect(warrior.defence).to be 25
              end
            end
          end
        end
      end
    end
  end
end
# 階層は深く網羅的にしていくようにする。女性⇨属性⇨装備