require_relative 'methods.rb'
puts "=== Меню ==="
while true
  puts "1. Готові риклади"
  puts "2. Власний приклад"
  puts "3. Вихід"
  choice = gets.to_i
  case choice
  when 1
    puts "132.168.11.1"
    puts valid_ipv4?("132.168.11.1")
    puts "255.0.0.0"
    puts valid_ipv4?("255.0.0.0")
    puts "25.0.025.0"
    puts valid_ipv4?("25.0.025.0")
    puts "/sd6.0.0.0"
    puts valid_ipv4?("/sd6.0.0.0")
    puts "192.168.1.1."
    puts valid_ipv4?("192.168.1.1.")
    puts "192.168.1.1.1"
    puts valid_ipv4?("192.168.1.1.1")
  when 2
    str = gets
    puts valid_ipv4?(str)
  when 3
    puts "Вихід із програми."
    break
  else
    puts "Невірний вибір. Будь ласка, оберіть знову"
  end
end


