class Application

    def call(env)
        resp = Rack::Response.new
        t = Time.now
        hour = t.hour
        
        if hour > 11
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

        resp.finish
    end

end