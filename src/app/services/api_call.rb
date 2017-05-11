require "rest-client"

class APICall
  def initialize(url, method)
    @url = url
    @method = method
  end

  def call()
    case @method
    when 'get'
      RestClient.get @url
    when 'post'
      RestClient.post @url
    end
  end
end
