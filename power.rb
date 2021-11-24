# 電源のオンオフ機能をモジュール化
# includeされると内部のメソッドだけが相手先で展開される

module Power
  def power(onoff)
    puts '電源を入れました' if onoff.to_sym == :on
    puts '電源を切りました' if onoff.to_sym == :off
  end
end
