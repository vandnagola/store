# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Set up of Rspec

**first add gem 'rspec-rails' in your gemfile.
** bundle install
** 'rails g rspec:install use' for complete set up of rspec.
** run 'rails g rspec model Product' for generate a rspec model.
* configuration in application.rb file for generate rspec file while generating a model or scaffolding it helps us to generate rspec file.
  ** config.generators do |g|
      g.test_framwork(
        :rspec,
        fixtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        )
    end 