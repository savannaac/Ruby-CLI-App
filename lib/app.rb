require "../lib/appliances.rb"

class App

    def start
        system "clear"

        puts "\n\n"
        puts " ░██████╗███╗░░░███╗      ░█████╗░██████╗░████████╗ ".light_magenta
        puts " ██╔════╝████╗░████║      ██╔══██╗██╔══██╗╚══██╔══╝ ".light_magenta
        puts " ╚█████╗░██╔████╔██║      ███████║██████╔╝░░░██║░░░ ".light_magenta
        puts " ░╚═══██╗██║╚██╔╝██║      ██╔══██║██╔══██╗░░░██║░░░ ".light_magenta
        puts " ██████╔╝██║░╚═╝░██║      ██║░░██║██║░░██║░░░██║░░░ ".light_magenta
        puts " ╚═════╝░╚═╝░░░░░╚═╝      ╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░ \n\n".light_magenta

    greeting
    end

    def greeting
        puts "Sm_art will present you a list of keywords.\nChoose one and it'll return a relevant artwork.".yellow
        
    users_name
    end

    def users_name
        puts "\n"
        puts "Hi, what's your name?"
        name = gets.chomp
        puts "Welcome, #{name}!\n".yellow

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
                    system "clear"

                    puts "\n\n"
                    puts "ⓁⓄⒶⒹⒾⓃⒼ ⓀⒺⓎⓌⓄⓇⒹⓈ ⒶⓃⒹ ⒶⓇⓉⓌⓄⓇⓀⓈ . . .".yellow
                when 2
                    puts "\n\n"
                    puts " ░██████╗░░█████╗░░█████╗░██████╗░██████╗░██╗░░░██╗███████╗".yellow
                    puts " ██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝██╔════╝".yellow
                    puts " ██║░░██╗░██║░░██║██║░░██║██║░░██║██████╦╝░╚████╔╝░█████╗░░".yellow
                    puts " ██║░░╚██╗██║░░██║██║░░██║██║░░██║██╔══██╗░░╚██╔╝░░██╔══╝░░".yellow
                    puts " ╚██████╔╝╚█████╔╝╚█████╔╝██████╔╝██████╦╝░░░██║░░░███████╗".yellow
                    puts " ░╚═════╝░░╚════╝░░╚════╝░╚═════╝░╚═════╝░░░░╚═╝░░░╚══════╝ \n\n".yellow
                    
                    exit
            end
    sleep(3)        
    keyword_menu
    end

    def keyword_menu
        system "clear"
        
        user_keyword = PROMPT.select("Select a keyword") do |menu|
            menu.choice "colors".green, 1
            menu.choice "moods".cyan, 2
            menu.choice "appliances".magenta, 3
        end

            case user_keyword
                when 1
                    color_menu
                when 2
                    mood_menu
                when 3
                    appliance_menu
            end
    end

    def color_menu
        system "clear"
        
        user_color = PROMPT.select("Now, let's choose a color") do |menu|
            menu.choice "yellow".green, 1
            menu.choice "red".green, 2
            menu.choice "blue".green, 3
        end

            case user_color
                when 1
                    system "clear"
                   
                    puts Color.get_yellow
                when 2
                    system "clear"
                   
                    puts Color.get_red
                when 3
                    system "clear"
                    
                    puts Color.get_blue
            end
    another_color_or_exit
    end

    def mood_menu
        system "clear"
        
        user_mood = PROMPT.select("Now, let's choose a mood") do |menu|
            menu.choice "happy".cyan, 1
            menu.choice "sad".cyan, 2
            menu.choice "anxious".cyan, 3
        end

            case user_mood
                when 1
                    system "clear"

                    puts Mood.get_happy
                when 2
                    system "clear"

                    puts Mood.get_sad
                when 3
                    system "clear"

                    puts Mood.get_anxious
            end
    another_mood_or_exit
    end

    def appliance_menu
        system "clear"
    
        user_appliance = PROMPT.select("Now, let's choose an appliance") do |menu|
            menu.choice "stove".magenta, 1
            menu.choice "refrigerator".magenta, 2
            menu.choice "toilet".magenta, 3
        end
            
            case user_appliance
                when 1
                    system "clear"
                    
                    artwork = API.new("stove")
                    artwork.get_appliance_api
                    get_appliance
                when 2
                    system "clear"

                    artwork = API.new("refrigerator")
                    artwork.get_appliance
                    get_appliance
                when 3
                    system "clear"

                    artwork = API.new("toilet")
                    artwork.get_appliance
                    get_appliance
            end
    puts "\n\n"
    another_appliance_or_exit
    end

    def get_appliance
        Appliance.all.each { |m| puts m.title.magenta + ", " + m.artist_display }
    end


    def another_color_or_exit
        sleep(1)

        user_choose_another = PROMPT.select("Well, that was fun. What next?") do |menu|
            menu.choice "choose another color (choosing the same color will return the same artwork)", 1
            menu.choice "select another keyword", 2
            menu.choice "exit", 3
        end

            case user_choose_another
                when 1
                    color_menu
                when 2
                    keyword_menu
                when 3
                    puts "\n\n"
                    puts " ░██████╗░░█████╗░░█████╗░██████╗░██████╗░██╗░░░██╗███████╗".yellow
                    puts " ██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝██╔════╝".yellow
                    puts " ██║░░██╗░██║░░██║██║░░██║██║░░██║██████╦╝░╚████╔╝░█████╗░░".yellow
                    puts " ██║░░╚██╗██║░░██║██║░░██║██║░░██║██╔══██╗░░╚██╔╝░░██╔══╝░░".yellow
                    puts " ╚██████╔╝╚█████╔╝╚█████╔╝██████╔╝██████╦╝░░░██║░░░███████╗".yellow
                    puts " ░╚═════╝░░╚════╝░░╚════╝░╚═════╝░╚═════╝░░░░╚═╝░░░╚══════╝ \n\n".yellow
                    
                    exit
            end
    end

    def another_mood_or_exit
        sleep(1)

        user_choose_another = PROMPT.select("Well, that was fun. What next?") do |menu|
            menu.choice "choose another mood (choosing the same mood will return the same artwork)", 1
            menu.choice "select another keyword", 2
            menu.choice "exit", 3
        end

            case user_choose_another
                when 1
                    mood_menu
                when 2
                    keyword_menu
                when 3
                    puts "\n\n"
                    puts " ░██████╗░░█████╗░░█████╗░██████╗░██████╗░██╗░░░██╗███████╗".yellow
                    puts " ██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝██╔════╝".yellow
                    puts " ██║░░██╗░██║░░██║██║░░██║██║░░██║██████╦╝░╚████╔╝░█████╗░░".yellow
                    puts " ██║░░╚██╗██║░░██║██║░░██║██║░░██║██╔══██╗░░╚██╔╝░░██╔══╝░░".yellow
                    puts " ╚██████╔╝╚█████╔╝╚█████╔╝██████╔╝██████╦╝░░░██║░░░███████╗".yellow
                    puts " ░╚═════╝░░╚════╝░░╚════╝░╚═════╝░╚═════╝░░░░╚═╝░░░╚══════╝ \n\n".yellow
                    
                    exit
            end
    end

    def another_appliance_or_exit
        sleep(1)

        user_choose_another = PROMPT.select("Well, that was fun. What next?") do |menu|
            menu.choice "choose another appliance (choosing the same appliance will return the same artwork)", 1
            menu.choice "select another keyword", 2
            menu.choice "exit", 3
        end

            case user_choose_another
                when 1
                    appliance_menu
                when 2
                    keyword_menu
                when 3
                    puts "\n\n"
                    puts " ░██████╗░░█████╗░░█████╗░██████╗░██████╗░██╗░░░██╗███████╗".yellow
                    puts " ██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔══██╗╚██╗░██╔╝██╔════╝".yellow
                    puts " ██║░░██╗░██║░░██║██║░░██║██║░░██║██████╦╝░╚████╔╝░█████╗░░".yellow
                    puts " ██║░░╚██╗██║░░██║██║░░██║██║░░██║██╔══██╗░░╚██╔╝░░██╔══╝░░".yellow
                    puts " ╚██████╔╝╚█████╔╝╚█████╔╝██████╔╝██████╦╝░░░██║░░░███████╗".yellow
                    puts " ░╚═════╝░░╚════╝░░╚════╝░╚═════╝░╚═════╝░░░░╚═╝░░░╚══════╝ \n\n".yellow
                    
                    exit
            end
    end
end