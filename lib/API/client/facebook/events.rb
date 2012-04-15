# -*- encoding : utf-8 -*-

module API
  module Client
    module Facebook

        class Events < API::Client::Facebook::Base
          domain 'https://graph.facebook.com'

          get :info, '/{event_id}'

          get :attending, '/{event_id}/attending' do |resource|
            resource.required :access_token
          end

          get :maybe, '/{event_id}/maybe' do |resource|
            resource.required :access_token
          end

          get :noreply, '/{event_id}/noreply' do |resource|
            resource.required :access_token
          end

          get :declined, '/{event_id}/declined' do |resource|
            resource.required :access_token
          end

          get :invited, '/{event_id}/invited' do |resource|
            resource.required :access_token
          end

        end

    end
  end
end