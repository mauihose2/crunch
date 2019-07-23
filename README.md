## Crunch setup

### To manage rubies, install RVM (not in scope)

* https://rvm.io/

### Clone the repo
* git clone [REPO NAME]
* cd [REPO NAME]

### Configure the application ruby and gemset using rvm

* rvm get latest
* rvm install 2.5.1 --disable-binary
* rvm ruby-2.5.1 do rvm gemset create crunch
* rvm 2.5.1@crunch do gem list
* rvm --default use 2.5.1
* rvm 2.5.1@crunch do gem install bundler
* rvm 2.5.1@crunch do gem install rspec
* rvm 2.5.1@crunch do gem install byebug
* rvm 2.5.1@crunch do gem install rubocop

### Install gems with bundler
* bundle install

### run crunch
* ruby crunch.rb
