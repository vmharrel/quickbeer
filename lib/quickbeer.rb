$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require "sinatra"
require "sinatra/config_file"
require "rest_client"
require "json"
require "nokogiri"
require "open-uri"

require "quickbeer/query"
require "quickbeer/beer"

config_file '../config.yml'
