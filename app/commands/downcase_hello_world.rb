class DowncaseHelloWorld
  include AutoInject[:hello_world_command]

  def call
    hello_world_command.call.downcase
  end
end

Example::Container.register('downcase_hello_world_command', -> { DowncaseHelloWorld.new })
