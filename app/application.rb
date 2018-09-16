require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    t1 = 0
    t2 = 12

    if t.hour.between?(t1, t2)
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
    resp.finish

  end
end
