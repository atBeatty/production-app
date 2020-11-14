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
    has_many :productions
    has_many :clients, through: :productions
Clients
    has_many :productions
    has_many :producers, through: :productions
Users
    has_many :productions
```

* Database initialization:
```
rails db:migrate
```

```
rails db:seed
```

### Main Features and User Story

This app is set up for an agency which keeps track of productions. Each production instance joins the foreign_keys and from there, relevant information can be displayed. From an agency/user perspective, this app allows for quick access to personnel, schedules, contracts, contact info, etc.

### Vision
I would like to see this built out to include more relationships and ties to the production class. I could see it being an app that sets reminders and and creates a daily schedule per production, considering the nuances and uniqueness of each shoot. It would be helpful to hook into a Crew class that helps access data on the Production crew. I imagine this will be a list of contractors/freelancers that are able to have many productions as one data association.