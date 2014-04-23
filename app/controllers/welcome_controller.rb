# config/initializers/pusher.rb
require 'pusher'

Pusher.url = "http://e4cf2399c571ef4a7352:fb6c0be417b809658c5c@api.pusherapp.com/apps/72745"
Pusher.logger = Rails.logger

class WelcomeController < ApplicationController
  def hello
  Pusher['test_channel'].trigger('greet', {
    :greeting => "Hello there!"
  })
  end
end
