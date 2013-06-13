
## This is an app for tracking ballot initiatives in San Francisco

#### Install
1) Install Rails and Bundler if you don't already have them
```
gem install rails
gem install bundler
```

2) Clone this repo
```
git clone https://github.com/sfbrigade/ballot_initiatives.git
```

4) Install required gems
```
cd ballot_initiative
bundle install
```

5) Migrate your database
```
rake db:migrate
````

6) Start your rails server
```
rails s

7) View your app at http://localhost:3000