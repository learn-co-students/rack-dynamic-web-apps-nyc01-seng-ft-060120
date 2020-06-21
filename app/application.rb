class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n" #writing the number to the response so user can see
    resp.write "#{num_2}\n" #\n are special characters which get rendered by browser 
    resp.write "#{num_3}\n" #as a new line
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win" #instead of puts use write for the web 
    else
      resp.write "You Lose"
    end    
    resp.finish #this is when the response is actually sent back to the user 
  end

end
