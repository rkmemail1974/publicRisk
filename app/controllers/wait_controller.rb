class WaitController < ApplicationController
    def index
        Pusher['presence-test-channel'].trigger('new_message', {:from => "test name", :subject => "test subject"})
    end
    
    def binding
        Pusher['presence-test-channel'].trigger('binding', {:from => "new name", :subject => "new subject"})
    end
    
end
