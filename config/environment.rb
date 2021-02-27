require "net/http"
require "open-uri"
require "httparty"
require "json"
require "tty-prompt"
require "colorize"
require "asciiart"
require 'bundler/setup'

Bundler.require

PROMPT = TTY::Prompt.new
include HTTParty

require_relative "../lib/app.rb"
require_relative "../lib/colors.rb"
require_relative "../lib/moods.rb"
require_relative "../lib/appliances.rb"