
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
            menu.choice "colors", 1
            menu.choice "moods", 2
            menu.choice "appliances", 3
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
            menu.choice "yellow".yellow, 1
            menu.choice "red".red, 2
            menu.choice "blue".cyan, 3
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
            menu.choice "happy".green, 1
            menu.choice "sad".cyan, 2
            menu.choice "anxious".red, 3
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
            menu.choice "stove", 1
            menu.choice "refrigerator", 2
            menu.choice "toilet", 3
        end

            case user_appliance
                when 1
                    system "clear"

                    puts Appliance.get_stove
                when 2
                    system "clear"

                    puts Appliance.get_refrigerator
                when 3
                    system "clear"

                    puts Appliance.get_toilet
            end
    another_appliance_or_exit
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