module Faker
  class Sat < Base
    flexible :sat

    class << self
      def rfc(fisica = true)
       fisica ? rfc_persona_fisica : rfc_persona_moral
      end

      def rfc_persona_fisica
        bothify(fetch('sat.rfc_fisica'))
      end

      def rfc_persona_moral
        bothify(fetch('sat.rfc_moral'))
      end
    end
  end
end
