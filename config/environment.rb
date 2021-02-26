require "net/http"
require "open-uri"
require "json"
#require "rest-client"
require "tty-prompt"
require "colorize"
require 'bundler/setup'

Bundler.require

PROMPT = TTY::Prompt.new

require_relative "../lib/api.rb"
require_relative "../lib/app.rb"
#require_relative "../lib/colors.rb"