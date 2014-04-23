class WelcomeController < ApplicationController
  def hello
  Pusher['test_channel'].trigger('greet', {
    :greeting => "Hello there!"
  })
  end
end
