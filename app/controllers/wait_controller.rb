class WaitController < ApplicationController  
    $channel = 'test-channel'
    $id = 1
    
    def index
        Pusher['test-channel'].trigger('count', {:from => "new name", :subject => "new subject"})
        
        
        Pusher['test-channel'].trigger('newPlayer', {:from => "new name", :subject => "new subject"})
        
    end
    
    def binding
        Pusher['test-channel'].trigger('binding', {:from => "new name", :subject => "new subject"})
    end
    
    def newgame
        Pusher['test-channel'].trigger('newgame', {:channelName => "game#{$id}", :subject => "test subject"})
    end
    
   end
