require 'time'
require 'date'
require 'dalli'
require 'net/http'
require "json"
require 'securerandom'

def register(params)
    $stdout.sync = true
end

def filter(event)
    event.set('cust_pod_name_kafka_to_os', ENV["POD_NAME"])

    return [event]
end
