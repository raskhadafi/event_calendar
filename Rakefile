require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

begin
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name = "event-calendar"
    gem.summary = "Event Calendar"
    gem.email = "coder2000@gmail.com"
    gem.description = "Generates a calendar with events that span more than one day."
    gem.files = Dir["*", "{lib}/**/*"]
    gem.authors = ["Jeff Schuil", "Dieter Lunn"]
    gem.homepage = "http://github.com/coder2000/event_calendar"
  end

  Jeweler::GemcutterTasks.new
rescue
  puts "Jeweler or one of its dependencies is not installed."
end

desc 'Test the event_calendar plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the event_calendar plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'EventCalendar'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

