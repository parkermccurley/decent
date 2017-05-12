class API
  def self.call(method, url)
    case method
    when "get"
      RestClient.get url
    when "post"
      RestClient.post url
    end
  end
end
