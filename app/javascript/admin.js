// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree.
import "@hotwired/turbo-rails"
import "controllers"
import "./jquery"
Turbo.session.drive = false
import "./sbadmin/sbadmin.js"
import "./sbadmin/jquery-easing/jquery.easing"
