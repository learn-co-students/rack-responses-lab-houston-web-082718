class Application

  def call(env)
    resp = Rack::Response.new
    t_array = Time.now.to_a
    if t_array[2] >= 0 && t_array[2] < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
