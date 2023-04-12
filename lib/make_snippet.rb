def make_snippet(string)
  arr = string.split(" ")
  output = arr.slice(0..4).join(" ")
  return "#{output}..."
end