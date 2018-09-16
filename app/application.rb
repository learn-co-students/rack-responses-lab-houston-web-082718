#Quick time appropriate greeter application
#If it's before noon, greet the user with "Good Morning!"
#If it's after noon, greet the user with "Good Afternoon!"

class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now
        resp.write "Current time: #{time}\n"

        if time.to_s.split(":").first[-2..-1].to_i < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end