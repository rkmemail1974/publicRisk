class WaitController < ApplicationController  
    $channel = 'presence-test-channel'
    $id = 1
    
    def index
        Pusher[$channel].trigger('new_message', {:from => "test name", :subject => "test subject"})
    end
    
    def binding
        Pusher[$channel].trigger('binding', {:from => "new name", :subject => "new subject"})
    end
    
    def newgame
        Pusher[$channel].trigger('newgame', {:channelName => "game#{$id}", :subject => "test subject"})
    end
    
   end
