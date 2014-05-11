class MaingameController < ApplicationController

    def index
        $channel = "presence-newChannel"
    end
    
    def binding
        Pusher[$channel].trigger('binding', {:from => "new name", :subject => "new subject"})
    end
    
end
