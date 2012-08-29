module Faker
  class Event < Base
    flexible :event

    class << self
      def name()
       parse('event.name')
      end
    end
  end
end
