class RiskController < ApplicationController
  def index
    Pusher['private-test-channel'].trigger('new_message', {:from => "test name", :subject => "test subject"})
  end
    
    def binding
         Pusher['private-test-channel'].trigger('binding', {:from => "new name", :subject => "new subject"})
    end
    
end
