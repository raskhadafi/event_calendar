require 'rails/generators/migration'

class EventCalendarGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  argument :class_name, :optional => true, :default => 'event'
  argument :view_name, :optional => true, :default => 'calendar'

  class_option :use_jquery, :type => :boolean, :default => false
  class_option :example, :type => :boolean, :default => false
  class_option :use_all_day, :type => :boolean, :default => false

  def install_static_files
    copy_file "stylesheet.css", "public/stylesheets/event_calendar.css"

    script = options.use_jquery? ? "jq_javascript.js" : "javascript.js"
    copy_file script, "public/javascripts/event_calendar.js"
  end

  def install_templates
    return unless options.example?

    template "model.rb.erb", File.join("app/models", "#{@class_name}.rb")
    template "controller.rb.erb", File.join("app/controllers", "#{@view_name}_controller.rb")
    empty_directory File.join("app/views", @view_name)
    template "view.html.erb", File.join("app/views", @view_name, "index.html.erb")
    template "helper.rb.erb", File.join("app/helpers", "#{@view_name}_helper.rb")
    migration_template "migration.rb.erb", "db/migrate/create_#{@class_name.pluralize}"

    route "match '/#{@view_name}/:year/:month' => '#{@view_name}#index'"
    route "match '/calendar' => '#{@view_name#index}', :year => Time.zone.now.year, :month => Time.zone.now.month"
    
  end
end

