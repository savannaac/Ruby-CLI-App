require "httparty"
require "json"
require "tty-prompt"
require "colorize"
require 'bundler/setup'
require "pry"

Bundler.require

PROMPT = TTY::Prompt.new

require_relative "../lib/app.rb"
require_relative "../lib/api.rb"
require_relative "../lib/colors.rb"
require_relative "../lib/moods.rb"
require_relative "../lib/appliances.rb"