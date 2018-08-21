require 'httparty'

class UserController < ApplicationController
  def index
    user_name = 'sarahmei'
    auth = {:username => "lifeprolific", :password => "TOKEN"}
    @user_api = HTTParty.get('https://api.github.com/users/' + user_name, :basic_auth => auth)
    @repos_api = HTTParty.get('https://api.github.com/users/' + user_name + '/repos', :basic_auth => auth)
    @orgs_api = HTTParty.get('https://api.github.com/users/' + user_name + '/orgs', :basic_auth => auth)
  end
end