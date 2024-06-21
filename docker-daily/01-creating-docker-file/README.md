<h2>Simple Express App & Plain Vanilla JS</h2>



### Quick Start

You need to install <a href="<https://nodejs.org/en/download/>">Node.js</a>  before .

 Install dependencies:

```bash
$ npm install
```

Start the server:

```bash
$ npm start
```

The URL :

<a href="http://localhost:3000">http://localhost:3000</a>

## Philosophy

The application use express to provide a simple Web-API (REST) which provides the path to the SPA’s script and the list of path are display on the home page .

We have also the front end who is doing a lazy loading of SPA ( Actually Home.js and About.js  )



<h2>How To Extend</h2>

For Example on the menu of the home , we want to add <b>Contact Us</b>



This the procedure :



1- Add The <b>Contact.js</b> into the folder  <i>/views/page</i>

2- Add to the <b>app.js</b> file the url of This new SPA. by doing two thing :

```java
			 import Contact      from './views/pages/Contact.js';
```
 You must add on the list of supported routes the url of this spa.

3- add the url of this spa in the navbar and then test .


