# -*- encoding : utf-8 -*-
require 'rubygems'

begin
  gem 'weary', '~> 1.0.0'
  gem 'json'
  require 'weary/client'
  require 'json'
rescue LoadError
  abort "Please install 'weary' and 'json' gems first:\n\ngem install weary -v '~> 1.0.0'\ngem install json"
end

module API

  LIBRARY_PATH  = File.join(File.dirname(__FILE__), 'API')
  CLIENT_PATH   = File.join(LIBRARY_PATH, 'client')
  MODULES_PATH  = File.join(LIBRARY_PATH, 'modules')
  RESPONSE_PATH = File.join(LIBRARY_PATH, 'response')

  autoload :Facebook,       File.join(LIBRARY_PATH, 'facebook')
  autoload :VERSION,        File.join(LIBRARY_PATH, 'version')

  module Client
    autoload :Base,         File.join(CLIENT_PATH, 'base')
    autoload :Facebook,     File.join(CLIENT_PATH, 'facebook')

    module Facebook
        autoload :Base,     File.join(CLIENT_PATH, 'facebook', 'base')
        autoload :Events,   File.join(CLIENT_PATH, 'facebook', 'events')
    end
  end

  module Modules
    autoload :Base,         File.join(MODULES_PATH, 'base')
    autoload :Facebook,     File.join(MODULES_PATH, 'facebook')

    module Facebook
        autoload :Events,   File.join(MODULES_PATH, 'facebook', 'events')
    end
  end

  module Response

    module Handler
        autoload :Base,     File.join(RESPONSE_PATH, 'handler', 'base')
        autoload :Facebook, File.join(RESPONSE_PATH, 'handler', 'facebook')
    end

  end

end