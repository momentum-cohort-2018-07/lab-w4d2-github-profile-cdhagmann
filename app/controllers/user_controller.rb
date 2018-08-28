class UserController < ApplicationController
  def index
    auth = {:username => "cdhagmann", :password => "1488ea0087d0f55bb57c654f9636785eb88c284e"}
    @user = HTTParty.get('https://api.github.com/users/cdhagmann', :basic_auth => auth)
    @repos = HTTParty.get('https://api.github.com/users/cdhagmann/repos', :basic_auth => auth).parsed_response
  end
end
