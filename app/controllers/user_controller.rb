require 'httparty'

class UserController < ApplicationController
  def index
    auth = {:username => "lifeprolific", :password => "TOKEN"}
    @user_response = HTTParty.get('https://api.github.com/users/sarahmei', :basic_auth => auth)
  end
end