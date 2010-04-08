require 'active_record'
require 'action_view'

require 'event_calendar/plugin_methods'
require 'event_calendar/calendar_helper'

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend EventCalendar::PluginMethods
end

if defined?(ActionView::Base)
  ActionView::Base.send :include, EventCalendar::CalendarHelper
end

