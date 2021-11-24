# ReizoukoA を継承する
require 'ReizoukoA'

class ReizoukoB < ReizoukoA
  # 既存の機能を上書きする
  # 同盟のメソッドがあればオーバーライドする
  def cool_down
    @temperature -= 3
    puts '冷やす機能がパワーアップしました'
    puts "現在の温度は #{@temperature} 度です"
  end
end

# 実行制御
if __FILE__ == $0 then
  model_b = ReizoukoB.new(15)
  model_b.cool_down
  model_b.power(off)
end