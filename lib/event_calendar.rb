require 'active_record'
require 'action_view'

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'event_calendar/event_calendar/plugin_methods'
require 'event_calendar/calendar_helper'

$LOAD_PATH.shift

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend EventCalendar::PluginMethods
end

if defined?(ActionView::Base)
  ActionView::Base.send :include, CalendarHelper
end

