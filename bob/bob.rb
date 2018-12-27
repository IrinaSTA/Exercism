class Bob
  def self.hey(remark)
    remark = remark.strip
    if /[a-zA-Z]/.match(remark) != nil && remark.upcase == remark && remark[-1] == "?"
      return "Calm down, I know what I'm doing!"
    elsif /[a-zA-Z]/.match(remark) != nil && remark.upcase == remark
      return "Whoa, chill out!"
    elsif remark.empty? == true
      return "Fine. Be that way!"
    elsif remark[-1] == "?"
      return "Sure."
    else
      return "Whatever."
    end
  end
end
