class PhoneNumber
  def self.clean(number)
    return nil if number.length == 9
    return nil if number.length == 11 && number[0] != 1
    number.scan(/\d/).join("")
  end
end
