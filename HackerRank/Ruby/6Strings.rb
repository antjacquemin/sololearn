# 1 Introduction
def single_quote
    # single quote string here
    'Hello World and others!'
end

def double_quote
    # Double quote string here
    "Hello World and others!"
end

def here_doc
# Here doc string here
    <<-Arret
    Hello World and others!
    Arret
end

# 2 Encoding
def transcode str 
    str.force_encoding(Encoding::UTF_8)
end

# 3 Indexing
def serial_average str
    return str[0,3] + "-" + ((str[4,5].to_f + str[10,5].to_f) / 2).round(2).to_s
end

# 4 Iteration
def count_multibyte_char str
    str.each_char.count { |x| x.bytesize > 1 }
end

# 5 Methods 1
def process_text arr
    arr.map { |str| str.strip }.join(" ")
end

# 6 Methods 2
def strike str
    return "<strike>#{str}</strike>"
end

def mask_article(str, arr)
    arr.each do |word| 
        str.gsub!(word, strike(word))
    end
    return str
end