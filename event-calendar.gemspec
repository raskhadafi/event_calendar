# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{event-calendar}
  s.version = "2.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Schuil", "Dieter Lunn"]
  s.date = %q{2010-04-08}
  s.description = %q{Generates a calendar with events that span more than one day.}
  s.email = %q{coder2000@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/event_calendar.rb",
     "lib/event_calendar/calendar_helper.rb",
     "lib/event_calendar/plugin_methods.rb",
     "lib/generators/event_calendar/event_calendar_generator.rb",
     "lib/generators/event_calendar/templates/controller.rb.erb",
     "lib/generators/event_calendar/templates/helper.rb.erb",
     "lib/generators/event_calendar/templates/javascript.js",
     "lib/generators/event_calendar/templates/jq_javascript.js",
     "lib/generators/event_calendar/templates/migration.rb.erb",
     "lib/generators/event_calendar/templates/model.rb.erb",
     "lib/generators/event_calendar/templates/stylesheet.css",
     "lib/generators/event_calendar/templates/view.html.erb",
     "lib/tasks/event_calendar_tasks.rake",
     "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/coder2000/event_calendar}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Event Calendar}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

