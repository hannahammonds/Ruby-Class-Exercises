require bcyrpt
require_relative 'user.rb'
#should be placed in your main file for inialization

module CRUD

    #turn a password into a hash(method 1)
    def self.create_digest_hash(password)
        Bcrypt::Password.create(password)
    end
    # secure users (method 2)
    def self.create_secure_users
        User.seed.each do |user|
            User.new(user[:username], create_digest_hash.user[:password])
        end
    end

    #authenticate user(method3)
    #pass in username and password
    #iterte through the usere.all array
    #check to see if any user instances and their username/password match up with what the user entered
    def self.authenticate_user
        User.all.each do |user|
            if user.username == username && user.password == password
                puts "Successful Login"
                break;
            else
                "Unsuccessful Login"
            end
        end
    end
end

CRUD.create_secure_users