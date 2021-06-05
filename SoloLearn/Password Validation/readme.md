# Password Validation
You're interviewing to join a security team. They want to see you build a password evaluator for your technical interview to validate the input.
## Task
Write a program that takes in a string as input and evaluates it as a valid password. The password is valid if it has at a minimum **2 numbers**, **2** of the following **special characters** ('!', '@', '#', '$', '%', '&', '*'), and a **length** of at least **7** characters.  
If the password passes the check, output '**Strong**', else output '**Weak**'.
### Input Format
A string representing the password to evaluate.
### Output Format
A string that says '**Strong**' if the input meets the requirements, or '**Weak**', if not.
### Sample Input
```
Hello@$World19
```
### Sample Output
```
Strong
```
### Explanation
The password has 2 numbers, 2 of the defined special characters, and its length is 14, making it valid.
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
password = input()
numbers = 0
symbols = 0
if len(password) > 6:
    for char in password:
        if char.isdigit():
            numbers += 1
        elif char in "!@#$%&*":
            symbols += 1
    if numbers > 1 and symbols > 1:
        print("Strong")
    else:
        print("Weak")
else:
    print("Weak")   
```
```python
numbers = len([char for char in password if char.isdigit()])
symbols = len([char for char in password if char in "!@#$%&*"])
if len(password) > 6 and numbers > 1 and symbols > 1:
    print("Strong")
else:
    print("Weak") 
```
### Ruby
```ruby
password = gets.chomp
numbers = password.count("0123456789")
symbols = password.count("!@#$%&*")
if password.size > 6 and numbers > 1 and symbols > 1
    puts "Strong"
else
    puts "Weak"
end
```
### Swift
```swift
if let password = readLine() {
    let numbers = password.characters.filter {"0123456789".contains($0)}.count
    let symbols = password.characters.filter {"!@#$%&*".contains($0)}.count
    if password.count > 6 && numbers > 1 && symbols > 1 {
        print("Strong")
    } else {
        print("Weak")
    } 
}
```