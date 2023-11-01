def valid_ipv4?(str)
  # Розділити строку на числа за допомогою крапок
  return false if str[-1] == "."
  numbers = str.split(".")
  # Перевірити, чи є рівно чотири числа
  return false unless numbers.length == 4

  # Перевірити кожне число
  numbers.each do |number|
    # Перевірити, чи є це число
    return false unless number.match(/^\d+$/)

    # Перевірити, чи знаходиться число в діапазоні 0-255
    value = number.to_i
    return false unless value >= 0 && value <= 255

    # Перевірити, чи немає ведучих нулів
    return false unless number == value.to_s
  end

  true
end