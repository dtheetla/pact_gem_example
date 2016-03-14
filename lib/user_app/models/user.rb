    class User
      attr_reader :name
      def initialize attributes
        @name = attributes[:name.to_s]
      end
      def == other
        other.is_a?(User) && other.name == self.name
      end
    end
