class String
  def zigzagcase
    modifiers = %i[upcase downcase].cycle
    self.chars.map{ |char| char.send(modifiers.next) }.join
  end
end
