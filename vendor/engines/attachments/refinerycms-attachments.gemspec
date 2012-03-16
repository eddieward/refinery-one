

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-attachments'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Attachments engine for Refinery CMS'
  s.date              = '2011-01-25'
  s.summary           = 'Ruby on Rails Attachments engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
