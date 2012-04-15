# -*- encoding : utf-8 -*-

module API
  module Modules
    module Facebook

      class Events < API::Modules::Base

        def info
          fetch :info
        end

        def attending
          fetch(:attending)['data']
        end

        def maybe
          fetch(:maybe)['data']
        end

        def noreply
          fetch(:noreply)['data']
        end

        def declined
          fetch(:declined)['data']
        end

        def invited
          fetch(:invited)['data']
        end

      end

    end
  end
end