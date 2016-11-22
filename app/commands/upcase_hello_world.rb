class UpcaseHelloWorld
  include AutoInject[:hello_world_command]

  def call
    hello_world_command.call.upcase
  end
end

Example::Container.register('upcase_hello_world_command', -> { UpcaseHelloWorld.new })
