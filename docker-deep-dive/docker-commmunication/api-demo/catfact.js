// fetchRandomCatFact.js

const axios = require('axios');

async function fetchRandomCatFact() {
    const url = "https://meowfacts.herokuapp.com/";

    try {
        const response = await axios.get(url);
        const fact = response.data.data; // Assuming the API returns { data: "fact" }

        return fact;
    } catch (error) {
        console.error("An error occurred:", error.message);
        return null;
    }
}

async function main() {
    const fact = await fetchRandomCatFact();
    if (fact) {
        console.log("Random Cat Fact:");
        console.log(fact);
    }
}

main().then(r => console.log);
