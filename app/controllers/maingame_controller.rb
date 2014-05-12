class MaingameController < ApplicationController
    def index

        Pusher['new-channel'].trigger('newPlayer', {:from => "new name", :subject => "new subject"})
    end
    
    def binding
        Pusher['new-channel'].trigger('binding', {:from => "new name", :subject => "new subject"})
    end
    
end
