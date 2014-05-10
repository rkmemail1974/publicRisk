 class PusherController < ApplicationController
  protect_from_forgery :except => :auth # stop rails CSRF protection for this action

  def auth
        response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
             :user_id => 12, # => required
            :user_info => {
            :name => "Robert",
       :email => "rkm_email@yahoo.com"
        }
       })
          render :json => response
  end
end
