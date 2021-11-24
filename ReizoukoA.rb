# 冷蔵庫 モデルAのクラス
class ReizoukoA
  # 設定温度を受け取ってインスタンス変数に保持する
  def initialize(num)
    @set_temperature = num.to_i
    @temperature = 25
    @foodstuff = []

    power(:on)

    puts "設定温度を #{@set_temperature} 度に設定しました"
    puts "現在の温度は #{@temperature} 度です"
    puts "#{foodstuff.size} 個の食材があります"
  end

  # 冷やす機能： 1回の実行で－1度冷える
  def cool_down
    @temperature -= 1 if @set_temperature < @temperature
  end

  # ドアが開く機能
  # 内部温度が上昇し、食材を一覧表示する
  def open_door
    @temperature += 3
    puts "内部温度が上昇し #{@temperature} 度になりました"
    puts "#{@foodstuff.size} 個の食材があります"
    @foodstuff.each do |v|
      puts v
    end
  end

  # 冷蔵庫に食材を入れる
  def put_in(str)
    @foodstuff << str
  end

  # 電源オン
  def power(onoff)
    puts '電源を入れました' if onoff.to_sym == :on
    puts '電源を切りました' if onoff.to_sym == :off
  end
end

# 実行制御
if __FILE__ == $0 then
  model_a = ReizoukoA.new(15)
  model_a.cool_down
  model_a.put_in('apple')
  model_a.open_door
  model_a.power(off)
end
