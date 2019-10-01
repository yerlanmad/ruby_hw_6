# метод для подсчета очков по броскам
def score_throws(radiuses=[])
  # Проверка переданного аргумента
  return "err. not Array" if !(radiuses.is_a? Array)
  return 0 if radiuses.empty?

  score = 0
  
  radiuses.each do |radius|
    # Проверка элемента массива
    next if !(radius.is_a? Numeric)
    score += 5 if radius >= 5 && radius <= 10
    score += 10 if radius < 5
  end

  # Начисляем бонусы
  score += 100 if score == 10 * radiuses.length
  # Возвращаем кол-во очков
  score

end


puts "Введите углы бросков."
throws = []
4.times do |i|
  print "Бросок №#{i+1}: "
  throws << gets.chomp.to_f
end

puts "Броски #{throws}. Общее кол-во очков: #{score_throws(throws)}"
puts "Броски (). Общее кол-во очков: #{score_throws()}"
puts "Броски (7). Общее кол-во очков: #{score_throws(7)}"
puts "Броски [\"a\", 5, 11]. Общее кол-во очков: #{score_throws(["a", 5, 11])}"
puts "Броски [1, 1, 1]. Общее кол-во очков: #{score_throws([1, 1, 1])}"
puts "Броски [9.9, 10.1, 4.9]. Общее кол-во очков: #{score_throws([9.9, 10.1, 4.9])}"
