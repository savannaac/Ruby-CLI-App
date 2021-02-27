# def app_name_asciiart
#   File.readlines ("FILENAME.txt") { |line| puts "line"}
# end

class App

    def start
        puts "Loading appName . . . ".yellow

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
                    puts "Loading keywords . . .".yellow
                when 2
                    puts "Goodbye".yellow
                    exit
            end
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
                    puts "Loading YELLOW artwork . . .".yellow

                    yellow_results
                when 2
                    system "clear"
                    puts "Loading RED artwork . . .".yellow

                    red_results
                when 3
                    system "clear"
                    puts "Loading BLUE artwork . . .".yellow 

                    blue_results
            end
    another_color_or_exit
    end

    def blue_results
        puts Color.get_blue
    end

    def red_results
        puts Color.get_red
    end

    def yellow_results
        puts Color.get_yellow
    end

    def mood_menu
        system "clear"
        
        user_mood = PROMPT.select("Now, let's choose a mood") do |menu|
            menu.choice "happy".green, 1
            menu.choice "sad".cyan, 2
            menu.choice "angry".red, 3
        end

            case user_mood
                when 1
                    system "clear"
                    puts "Loading HAPPY artwork . . .".yellow

                    happy_results
                when 2
                    system "clear"
                    puts "Loading SAD artwork . . .".yellow

                    sad_results
                when 3
                    system "clear"
                    puts "Loading ANGRY artwork . . .".yellow

                    angry_results
            end
    another_mood_or_exit
    end

    def happy_results
        puts Mood.get_happy
    end

    def sad_results
        puts Mood.get_sad
    end

    def angry_results
        puts Mood.get_angry
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
                    puts "Loading STOVE artwork . . .".yellow

                    stove_results
                when 2
                    system "clear"
                    puts "Loading REFRIGERATOR artwork . . .".yellow

                    refrigerator_results
                when 3
                    system "clear"
                    puts "Loading toilet artwork . . .".yellow

                    toilet_results
            end
    another_appliance_or_exit
    end

    def stove_results
        puts Appliance.get_stove
    end

    def refrigerator_results
        puts Appliance.get_refrigerator
    end

    def toilet_results
        puts Appliance.get_toilet
    end

    def another_color_or_exit
        user_choose_another = PROMPT.select("Well, that was fun.\n What next?") do |menu|
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
                    puts "Goodbye".yellow
                    exit
            end
    end

    def another_mood_or_exit
        user_choose_another = PROMPT.select("Well, that was fun.\n What next?") do |menu|
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
                    puts "Goodbye".yellow
                    exit
            end
    end

    def another_appliance_or_exit
        user_choose_another = PROMPT.select("Well, that was fun.\n What next?") do |menu|
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
                    puts "Goodbye".yellow
                    exit
            end
    end

end
