require "net/http"
require "open-uri"
require "json"
require "tty-prompt"
require "colorize"
require 'bundler/setup'

Bundler.require

PROMPT = TTY::Prompt.new