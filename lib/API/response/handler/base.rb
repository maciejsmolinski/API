# -*- encoding : utf-8 -*-

module API
  module Response
    module Handler

      class Base
        def initialize(response)
          @response = response
        end

        def process
          @response.body if @response.success?
        end
      end

    end
  end
end