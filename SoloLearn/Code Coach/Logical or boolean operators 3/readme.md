# Logical or boolean operators 3
An exam is held at the school every Friday.  
In this code, you have a line of code that gets the day of the week by input.
## Task
Complete the program to display "exam day" if it is Friday, and "no exam" otherwise.
### Sample Input
```
Friday
```
### Sample Output
```
exam day
```
### Explanation
Use **Ternary operator**.
## Solutions
### Javascript
```javascript
function main() {
    var day = readLine();
    console.log(day === "Friday" ? "exam day" : "no exam");
}
```