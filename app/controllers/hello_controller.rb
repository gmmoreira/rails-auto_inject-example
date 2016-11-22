class HelloController < ApplicationController
  include AutoInject['hello_world_command']

  def index
    render plain: hello_world_command().call()
  end
end
