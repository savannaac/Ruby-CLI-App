# def app_name_asciiart
#   File.readlines ("FILENAME.txt") { |line| puts "line"}
# end

class App

    def start
        puts "Loading . . . ".yellow

        system "clear"
        greeting
    end

    def greeting
        puts "appName will present you with a list of keywords.\nChoose one & it'll return an artwork containing that keyword.".yellow
        
        users_name
    end

    def users_name
        puts "What is your name?"
        name = gets.chomp
        puts "Welcome, #{name}!".yellow

        welcome_menu 
    end

    def welcome_menu
        choices = [
            {name: "Yes!", value: 1},
            {name: "Exit", value: 2}
        ]

        user_input = PROMPT.select("Let's get started?", choices)

        case user_input
            when 1
                puts "Loading colors . . .".yellow
            when 2
                puts "Goodbye".yellow
                exit
        end
        color_menu
    end

    def color_menu
        system "clear"
        
        PROMPT.select("Choose a color") do |menu|
            menu.choice "yellow".yellow, 1
            menu.choice "red".red, 2
            menu.choice "blue".blue, 3
            menu.choice "white", 4
            menu.choice "black".light_black, 5
        end

        system "clear"
        loading_artworks
    end

    def loading_artworks
        puts "Loading artworks . . .".yellow
    end

    #def list_color_artworks
    #    Color.all.each.with_index { |color, index| puts "#{index}. #{color}"}
    #end
end




    

