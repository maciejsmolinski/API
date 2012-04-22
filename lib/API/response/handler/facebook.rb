# -*- encoding : utf-8 -*-

module API
  module Response
    module Handler

      class Facebook < API::Response::Handler::Base

        def process
          if @response.success?
            body = JSON.parse(@response.body)
            raise ArgumentError, 'Facebook error found' if body.has_key? "error"
            return body
          else
            raise StandardError, 'Facebook response wasn\'t successful'
          end
        end

      end

    end
  end
end