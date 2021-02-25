require "colorize"
require "tty-prompt"

PROMPT = TTY::Prompt.new
# def app_name_asciiart
#   File.readlines ("FILENAME.txt") { |line| puts "line"}
# end

    def greeting
        puts "appName will present you with a list of keywords. Choose one & it'll return an artwork containing that keyword.".yellow
    end
    greeting

    def test
        PROMPT.ask("What is your name?", default: "No Name")
    end
    test

    def welcome_menu
        choices = [
            {name: "Yes!", value: 1},
            {name: "Exit", value: 2}
        ]

        user_input = PROMPT.select("Welcome! Let's get started?", choices)

        case user_input
            when 1
                puts "Loading keywords...".yellow
            when 2
                puts "Goodbye".yellow
                exit
        end
    end
    welcome_menu

    def color_menu
        PROMPT.select("Choose a color") do |menu|
            menu.choice "yellow".yellow, 1
            menu.choice "red".red, 2
            menu.choice "blue".blue, 3
            menu.choice "white", 4
            menu.choice "black", 5
        end
    end
    color_menu

