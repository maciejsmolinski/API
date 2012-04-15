# -*- encoding : utf-8 -*-

$:.push File.join(File.dirname(File.expand_path(__FILE__)),'lib')
require 'API'

access_token = ''
abort('Please specify FB access token first') if access_token.empty?

event_urls   = { 
    wcwp:   'https://www.facebook.com/events/360943930616313/', 
    cfb:    'https://www.facebook.com/events/268847286539988/', 
    tallib: 'https://www.facebook.com/events/389317177764761/?ref=ts'
}
event_names  = [:wcwp, :cfb, :tallib]


puts "-" * 80
puts "// Powered by APIv#{API::VERSION}"

fb         = API::Facebook.new(access_token)
fb_event   = fb.event(event_urls[event_names.sample]) # pick random event 

info       = fb_event.info
attending  = fb_event.attending
maybe      = fb_event.maybe
begin_time = Date.parse(info['start_time']).strftime('%d.%m.%Y')

puts " (event info) ".center(80, '-')
puts
puts "* Event ID       : #{info['id']}"
puts "* Event Owner    : #{info['owner']['name']}"
puts
puts "* Event Name     : #{info['name']}"
puts "* Event Location : #{info['location']}"
puts "* Event Start    : #{begin_time}"
puts
puts "* Going:         : #{attending.size}"
puts "* Maybe:         : #{maybe.size}"
puts
puts "* Event Desc.    :"
puts
puts "#{info['description'][0..100]}..."

puts
puts " (event info) ".center(80, '-')
