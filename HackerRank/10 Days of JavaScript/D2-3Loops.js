'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the vowelsAndConsonants function.
 * Print your output using 'console.log()'.
 */
function vowelsAndConsonants(s) {
    let wovels = s.match(/[aeiou]/ig).join("");
    let consons = s.match(/[^aeiou]/ig).join("");
    for(const lettre of wovels) {
        console.log(lettre);
    }
    for(const lettre of consons) {
        console.log(lettre);
    }
}

function main() {
    const s = readLine();
    
    vowelsAndConsonants(s);
}