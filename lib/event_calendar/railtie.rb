require 'event_calendar/plugin_methods'
require 'event_calendar/calendar_helper'
require 'rails'
require 'active_record'
require 'action_pack'

module EventCalendar < Rails::Railtie
  initializer "event_calendar.add_methods" do |app|
    ActiveRecord::Base.extend EventCalendar::PluginMethods
    ActionView::Base.send :include, EventCalendar::CalendarHelper
  end
end

