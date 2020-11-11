# README

### Installation
Clone repository. 
Open the terminal and navigate to the application root folder.
Install all of the dependencies and gems by running bundle install.

```
bundle install
```

Open up a web browser and enter in the following url localhost:3000

* Ruby version: 
ruby 2.6.1p33

* System dependencies: 
bcrypt (~> 3.1.7), bootsnap (>= 1.4.2), bootstrap_form (~> 4.0), byebug, capybara (>= 2.15), dotenv-rails, faker!, jbuilder (~> 2.7), listen (~> 3.2), omniauth, omniauth-github, pry, puma (~> 4.1), rails (~> 6.0.3, >= 6.0.3.4), sass-rails (>= 6), selenium-webdriver, spring, spring-watcher-listen (~> 2.0.0), sqlite3 (~> 1.4), turbolinks (~> 5), tzinfo-data, web-console (>= 3.3.0), webdrivers, webpacker (~> 4.0)

* Configuration

* Database creation: 
```
Productions
    belongs_to :client
    belongs_to :producer
    belongs_to :user
Producers
Clients
Users
```

* Database initialization:
```
rails db:migrate
```

```
rails db:seed
```

### Main Features

