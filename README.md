## What is [Listboxer](http://listboxer.com)?
Listboxer is the result of an idea I had to decouple email newsletters from the email inbox. It basically acts as a public inbox where people can come and discover newsletters before subscribing to them. There is a lot of good content out there that is currently silo-ed and hidden from discovery. Lots of really smart people are creating amazing stuff but it's hidden away from view. Imagine a twitter that doesn't require you to do anything but send out the emails you're already creating.

## How it works:
![Diagram](http://i.imgur.com/eJDYVIU.jpg)
## Why was it created?
I created it as a project to learn more about RoR and postbacks using a third-party API.

## How long did it take to create?
It was created in about a week as a final project for [General Assembly's](http://www.generalassembly.com) Web Development Immersive Course.

## How to install?
**Requirements**
1. Create account on Postmark
1. Download install and run [PostgreSQL](https://www.postgresql.org)

**Install Process**
1. `$ git clone https://github.com/rileygelwicks/listboxer.git`
1. `$ cd listreader/`
3. `$ bundle install`
4. `$ rails s`
5. Navigate to [localhost:3000](http://localhost:3000) in your browser.

## Tech Stack
* Ruby on Rails
* PostgreSQL
* [Griddler](http://griddler.io/) for handling inbound emails.
* CoffeeScript with jQuery
* Heroku for hosting.

## License
[MIT](/LICENSE.txt)
