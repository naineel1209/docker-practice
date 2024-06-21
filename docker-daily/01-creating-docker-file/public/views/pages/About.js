let About = {
    render : async () => {
        let view =  /*html*/`
            <section class="section">
                <h1> About </h1>
                <div>
					About Content
                </div>
            </section>
        `
        return view
    },
    after_render: async () => {}
        
}

export default About;