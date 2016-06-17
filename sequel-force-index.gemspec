Gem::Specification.new do |s|
  s.name        = 'sequel-force-index'
  s.version     = '0.5.0'
  s.date        = '2016-06-17'
  s.summary     = "A Sequel plugin to force index."
  s.description = "A Sequel plugin to force index."
  s.authors     = ["Daniel Marchant"]
  s.email       = 'driedtoast@gmail.com'
  s.files       = ["lib/sequel/plugins/force_index.rb"]
  s.homepage    = 'https://github.com/driedtoast/sequel-force-index'
  s.license     = "MIT"

  s.add_runtime_dependency "sequel"
end
