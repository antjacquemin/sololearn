sentence = input()
newSentence = ""
for word in sentence.split():
    newSentence += word[1:] + word[0] + "ay "
print(newSentence[:-1])