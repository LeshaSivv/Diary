current_path = File.dirname(__FILE__)
puts 'Привет, я твой дневник.Что хочешь записать?'
puts 'Введите end, чтобы окончить запись'
lines = []
input = nil
until input == 'end'
  input = gets.chomp
  lines << input
end
lines.pop
file_name = Time.now.strftime('%d_%m_%Y')
file = File.new("#{current_path}/data/#{file_name}.txt", 'a')
lines.each { |line| file.puts(line) }
file.puts '---------------'
puts 'Запись сделана'
file.close
