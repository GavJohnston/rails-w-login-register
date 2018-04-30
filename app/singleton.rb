require "singleton"

class AppConfig
    include Singleton
    
    def load_config(filename)
        puts "File was loaded "
        
    end
end