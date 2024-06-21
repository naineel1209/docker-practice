let getCards = async () => {
     const options = {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json'
        }
    };
    try {
        const response = await fetch(`http://localhost:3000/spas`, options)
        const json = await response.json();
        // console.log(json)
        return json
    } catch (err) {
        console.log('Error getting documents', err)
    }
}

let Home = {
    render : async () => {

        let cards = await getCards();

        let view =  /*html*/`
            <section class="section">
                <h1> Home </h1>
                <h2> Cards From Backend</h2>
                <ul>
                    ${ cards.map(card => 
                            /*html*/`<li>${Object.keys(card)} - ${card[Object.keys(card)[0]]}</li>`
                            ).join('\n ')
                    }
                </ul>
            </section>
        `
        return view
    }
    , after_render: async () => {
    }

}

export default Home;