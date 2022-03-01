require 'bcrypt'

class User
    # Attributes
    attr_accessor :username, :password, :logged_in

    # Class Variables
    # Stores user instances
    @@users = []

    def initialize(username, password)
        @password = create_hash_digest(password)
        @username = username
        @logged_in = false
        @@users << self
    end

    # Instance Methods
    # checks to see if the user is "logged in"
    def logged_in?
        logged_in 
    end

    # salts password
    def create_hash_digest(password)
        BCrypt::Password.create(password)
        
    end

    # Class Methods
    def self.all
        @@users
    end
        # "logs in user"
    def self.login(username, password)
        current_user = nil
        all.each do |user|
            if user.username == username && user.password == password
                current_user = user
                current_user.logged_in = true
                puts "You are logged in"
                break;

            else 
                puts "You are not logged in"
            end
        end
        current_user
    end
end

# Initializing instances
User.new("johndoe123", "password1")
User.new("skywoman456", "password2")
User.new("jimmyjohns789", "password3")


isLoggedIn = false

# Count to keep track of how many login attempts have been tried
tries = 0;

while (isLoggedIn == false)
    puts "What is your username?"
    username = gets.chomp.downcase
    puts "What is your password?"
    password = gets.chomp.downcase
    current_user = User.login(username, password)
    puts current_user
    if current_user
        isLoggedIn = true 
    else
    # Attempts
    tries += 1
    puts "Attempt #{tries} / 3"
    if(tries == 3)
        puts "Too many attempts, try again later"
        break;
    end
    end
end
