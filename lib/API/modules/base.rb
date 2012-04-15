# -*- encoding : utf-8 -*-

module API
  module Modules

    class Base

      def initialize(id, client, access_token)
        @id, @client, @access_token = id, client, access_token
      end

      protected

        def fetch(method)
          response = @client.send(method, { event_id: @id, access_token: @access_token }).perform
          return API::Response::Handler::Facebook.new(response).process
        end

    end

  end
end