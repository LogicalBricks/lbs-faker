module Faker
  class Events < Base
    flexible :events

    class << self
      def name()
       parse('events.name')
      end
    end
  end
end
