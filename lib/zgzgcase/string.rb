class String
  def zgzgcase
    modifiers = %i[upcase downcase].cycle
    self.chars.map{ |char| char.send(modifiers.next) }.join
  end
end
