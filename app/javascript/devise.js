// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree.

import "@hotwired/turbo-rails"
import "controllers"
Turbo.session.drive = false

import "./controllers/mask"
