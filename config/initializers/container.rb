module Example
  class Container
    extend Dry::Container::Mixin
  end
end

AutoInject = Dry::AutoInject(Example::Container)

load_paths = [
  "#{Rails.root}/app/commands"
]

load_paths.each do |load_path|
  matcher = /\A#{Regexp.escape(load_path.to_s)}\/(.*)\.rb\Z/
  Dir.glob("#{load_path}/**/*.rb").sort.each do |file|
    require_dependency file.sub(matcher, '\1')
  end
end

