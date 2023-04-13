def string_is_a_todo(string)
  fail "Inputted string should be of type String" unless string.is_a? String
  if string.include?("TODO")
    return true
  else
    return false
  end
end