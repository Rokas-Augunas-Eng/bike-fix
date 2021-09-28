<h3 align="center">Bike-fix</h3>

<p align="center"> A mobile web app that allows cyclists to find bike shops near them and book a repair service wherever they are.
  <br />
  <a href="https://github.com/augunasr/Bike-fix">View Demo</a>
  ·
  <a href="https://github.com/augunasr/Bike-fix/issues">Report Bug</a>
  ·
  <a href="https://github.com/augunasr/Bike-fix/issues">Request Feature</a>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#instalation">Instalation</a></li>
    <li><a href="#deploy">Deploy</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

<p>A mobile web app that allows cyclists to find bike shops near them and book a repair service wherever they are.</p>

<img src="app/assets/images/bike.PNG" width="" height="400">

### Built With

* [Ruby on Rails](https://rubyonrails.org/)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* Ruby
```
ruby-install ruby
```

<!-- INSTALATION -->
## Instalation

1. Clone the repo
```
git clone https://github.com/augunasr/Bike-fix.git
```
2. Install dependencies
```
bundle && yarn
```
3. Initialize the databse 
```
rails db:create db:migrate db:seed
```
4. Add heroku remotes
Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```
Run the server
```
rails s
```

<!-- DEPLOY -->
## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```
git push heroku
```

<!-- USAGE EXAMPLES -->
## Usage

<!-- CONTACT -->
## Contact

[![Linkedin Badge](https://img.shields.io/badge/-Rokas-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rokasaugunas/)](https://www.linkedin.com//in/rokasaugunas/)
[![Gmail Badge](https://img.shields.io/badge/-augunasr@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:augunasr@gmail.com)](mailto:augunasr@gmail.com)

Project Link: [https://github.com/augunasr/Bike-fix](https://github.com/augunasr/Bike-fix)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/github_username
