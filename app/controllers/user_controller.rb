class UserController < ApplicationController
  def show
    response.headers['Content-Type'] = 'application/json'
    render :json=>{name:'Betty'}
  end
end
