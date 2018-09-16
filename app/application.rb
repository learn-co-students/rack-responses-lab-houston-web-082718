



class Application

    def call(evn)
        resp = Rack::Response.new

        time = Time.now
        resp.write time
        if time.hour <= 12
            resp.write "Good Morning!"
        elsif
            resp.write "Good Afternoon"
        end

        resp.finish
    end


end