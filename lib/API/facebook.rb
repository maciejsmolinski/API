# -*- encoding : utf-8 -*-

module API

  class Facebook

    def initialize(access_token = nil)
      @access_token = access_token
      @events = {}
    end

    def event(event_url)
      /events\/(?<event_id>\d+)/ =~ event_url
      raise ArgumentError, 'Wrong Event URL specified' if event_id.nil?

      @events[event_url] ||= API::Modules::Facebook::Events.new(event_id, API::Client::Facebook::Events.new, @access_token)
    end

  end

end