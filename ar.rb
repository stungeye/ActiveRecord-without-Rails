require 'active_record'
require 'logger'

ActiveRecord::Base.establish_connection :adapter => 'sqlite3',
                                :database => 'db/development.sqlite3'
ActiveSupport::LogSubscriber.colorize_logging = false
ActiveRecord::Base.logger = Logger.new(STDOUT)