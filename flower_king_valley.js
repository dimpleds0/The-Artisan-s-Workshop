// The Artisan's Workshop 
// JavaScript

// Importing libraries
const fs = require('fs');
const readline = require('readline');

//Initializing readline for asynchronous reading 
const rl = readline.createInterface({
    input: fs.createReadStream('artisan.js')
});

// Setting global variables 
let lines = 0;
let codeString = '';

// Listening to line changes 
rl.on('line', (line) => {
    if(lines++ < 2000) {
        codeString += line + '\n';
    } 
});

// Write code to file when reading is finished 
rl.on('close', () => {
    fs.writeFile('theArtisansWorkshop.js', codeString, (err) => {
        if (err) {
            console.error(err);
        }
        console.log(`\nWriting finished, 2000 lines of code added to theArtisansWorkshop.js`)
    })
});