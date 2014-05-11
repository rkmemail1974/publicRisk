 class PusherController < ApplicationController
  protect_from_forgery :except => :auth # stop rails CSRF protection for this action
     
     
  def auth
      
      Pusher[$channel].trigger('newPlayer', {:from => "new name", :subject => "new subject"})
      
        response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
             :user_id => 12, # => required
            :user_info => {
            :name => "Robert",
       :email => "rkm_email@yahoo.com"
        }
       })
          render :json => response
      
      Pusher[$channel].trigger('count', {:from => "new name", :subject => "new subject"})
  end
end
