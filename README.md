# Flickr API

This repo is simply to learn how the Flickr API works. [Link to project](https://www.theodinproject.com/lessons/ruby-on-rails-flickr-api). It will be a bare bones project with additional CSS or HTML for style. I have a child a full time job ain't got no time. 

## Credentials

The API keys were encrypted using [Credentials](https://webcrunch.com/posts/the-complete-guide-to-ruby-on-rails-encrypted-credentials)

## Static Pages Controller
Made the static pages controller with no model. Model was not needed. There is simply an index method which uses the flickr gem (version 2.0 check gemfile) to search for user ids. IDs are returned and used to render the user's public photos in the index.html.erb view

## Rails and ruby versions:
* Rails version = 7.1.3.2
* Ruby version = 3.3.0
