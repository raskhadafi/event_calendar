require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'spec/rake/spectask'

begin
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name = "event-calendar"
    gem.summary = "Event Calendar"
    gem.email = "roman.simecek@cyt.ch"
    gem.description = "Generates a calendar with events that span more than one day."
    gem.files = FileList["[A-Z]*", "{lib,rails}/**/*"]
    gem.authors = ["Roman Simecek"]
    gem.homepage = "http://github.com/raskhadafi/event_calendar"
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

