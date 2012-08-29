module Faker
  class Place < Base
    flexible :place

    class << self
      
      def name
        parse('place.name')
      end
            
    end
  end
end
