# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{event_calendar}
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Schuil", "Dieter Lunn"]
  s.date = %q{2010-04-07}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "CHANGELOG.rdoc",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "init.rb",
     "install.rb",
     "lib/event_calendar.rb",
     "lib/event_calendar/calendar_helper.rb",
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
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/coder2000/event_calendar}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Event Calendar}
  s.test_files = [
    "test/test_helper.rb",
     "test/event_calendar_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

