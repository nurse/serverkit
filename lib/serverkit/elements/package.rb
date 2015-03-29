require "serverkit/elements/base"

module Serverkit
  module Elements
    class Package < Base
      def apply
        run_command_from_identifier(:install, package)
      end

      # @return [true, false]
      def check
        check_command_from_identifier(:check_package_is_installed, package)
      end

      private

      # @return [String]
      def package
        @properties["package"]
      end
    end
  end
end
