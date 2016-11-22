class HelloWorld
  def call
    "Hello World from injected dependency!"
  end
end

Example::Container.register('hello_world_command', -> { HelloWorld.new })
