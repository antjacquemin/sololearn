cmyk = []
(1..4).each { || cmyk += [ gets.chomp.to_f ] }
rgb = []
(0..2).each { |i| rgb += [ (255 * (1 - cmyk[i]) * (1 - cmyk[3])).round ] }
puts rgb.join(",")