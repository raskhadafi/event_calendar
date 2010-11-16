require 'event_calendar'
require 'rails'

module EventCalendar
  class Railtie < Rails::Engine
    initializer :after_initialize do
      ActionController::Base.helper CalendarHelper

      #ActiveRecord::Base.extend(HasVcardsClassMethods)
    end
  end
end