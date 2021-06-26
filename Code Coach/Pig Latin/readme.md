# Pig Latin
You have two friends who are speaking Pig Latin to each other! Pig Latin is the same words in the same order except that you take the first letter of each word and put it on the end, then you add 'ay' to the end of that. ("road" = "oadray")
## Task
Your task is to take a sentence in English and turn it into the same sentence in Pig Latin!
### Input Format
A string of the sentence in English that you need to translate into Pig Latin. (no punctuation or capitalization)
### Output Format
A string of the same sentence in Pig Latin.
### Sample Input
```
nevermind youve got them
```
### Sample Output
```
evermindnay ouveyay otgay hemtay
```
### Explanation
The output should be the original sentence with each word changed so that they first letter is at the end and then -ay is added after that.
## Solutions
### C
```c
```
### C++
```cpp
```
### C#
```cs
```
### Java
```java
```
### Python
```python
sentence = input()
newSentence = ""
for word in sentence.split():
    newSentence += word[1:] + word[0] + "ay "
print(newSentence[:-1])
```
### Ruby
```ruby
words = gets.chomp.split
wordsPL = Array.new
words.each { |word| wordsPL << word[1..word.length - 1] + word[0] + "ay" }
puts wordsPL.join(" ")
```
### Swift
```swift
```