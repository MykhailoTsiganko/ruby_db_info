require 'rubygems'
require 'active_record'


ActiveRecord::Base.establish_connection(
    :adapter=> "mysql2",
    :host => "10.1.73.30",
    :port =>"33306",
    :username=> "root",
    :password => "dummy",
    :database=> "banking_production"
)

