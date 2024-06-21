let Navbar = {
    render: async () => {
        let view =  /*html*/
            `
              <nav>
                <div class="nav">
                  <input type="checkbox" id="nav-check">
                  <div class="nav-header">
                    <div class="nav-title">
                      DanieL
                    </div>
                  </div>
                  <div class="nav-btn">
                    <label for="nav-check">
                      <span></span>
                      <span></span>
                      <span></span>
                    </label>
                  </div>
                  
                  <div class="nav-links">
                    <a href="/#/">Home</a>
                    <a href="/#/team">Team</a>
                    <a href="/#/testimonials">Testimonials</a>
                    <a href="/#/contact-us">Contact Us</a>
                    <a href="/#/about">About</a>
                  </div>
                </div>  
              </nav>  
            
            `
        return view
    },
    after_render: async () => { }

}


export default Navbar;