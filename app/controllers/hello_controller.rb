class HelloController < ApplicationController
  include AutoInject['downcase_hello_world_command', 'hello_world_command', 'upcase_hello_world_command']

  def index
    render plain: hello_world_command.call
  end

  def upcase
    render plain: upcase_hello_world_command.call
  end

  def downcase
    render plain: downcase_hello_world_command.call
  end
end
