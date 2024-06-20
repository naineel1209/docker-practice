// randomFileGenerator.js

const fs = require('fs');
const path = require('path');
const readline = require('readline');

// Function to generate random alphanumeric content
function generateRandomContent(length) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    let result = '';
    for (let i = 0; i < length; i++) {
        result += characters.charAt(Math.floor(Math.random() * characters.length));
    }
    return result;
}

// Create readline interface
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

// Ask for filename
rl.question('Enter the filename: ', (filename) => {
    // Ask for content length
    rl.question('Enter the length of the random content: ', (length) => {
        // Convert length to a number
        const contentLength = parseInt(length, 10);

        // Validate content length
        if (isNaN(contentLength) || contentLength <= 0) {
            console.error('Invalid length. Please enter a positive number.');
            rl.close();
            return;
        }

        // Generate random content
        const content = generateRandomContent(contentLength);

        // Define the file path (current directory)
        const filePath = path.join(__dirname, 'files', filename+'.txt');

        // Write content to the file
        fs.writeFile(filePath, content, (err) => {
            if (err) {
                console.error('Error writing to file:', err);
                rl.close();
                process.exit(1);
            }
            console.log(`File '${filename}' has been created with ${contentLength} characters of random content.`);

            //List the files of the directory
            fs.readdir(path.join(__dirname, 'files'), (err, files) => {
                if (err) {
                    console.error('Error reading directory:', err);
                    rl.close();
                    process.exit(1);
                }
                console.log('Files in the directory:');
                files.forEach(file => {
                    console.log(file);
                });
                rl.close();
            });
            // rl.close();
        });
    });
});
