// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Swiper, { Navigation } from "swiper";

Swiper.use([Navigation]);
