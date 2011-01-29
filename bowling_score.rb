# coding: utf-8
class BowlingScore
  def score(pins)
#    pins.inject(0){|res, i| res+=i}
    sum = 0

    while pins != []
      first , second = pins.shift(2)

      sum += first + (second || 0)
      if first + (second || 0) == 10
        sum += pins[0]
      end
    end

=begin
    pins.each_with_index do |n, i|
      sum += n
      frame_score += n

      if frame_score == 10 && frame_number != 10
        sum += pins[i + 1]
      end

      # 奇数のときフレーム番号が上がる
      # フレームごとの得点をリセット
      if i % 2 == 1
        frame_number +=  1
        frame_score = 0
      end
    end
=end
    sum
  end
end
