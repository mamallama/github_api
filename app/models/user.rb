require 'httparty'
require 'byebug'

class User
  def initialize(login)
    @login = login
    @response = get_response
  end

  def name
    @response["name"]
  end

  def username
    @response["login"]
  end

  def company
    @response["company"]
  end

  def location
    @reponse["location"]
  end

  def joined_on
    @response["created_at"]
  end

  def followers
    @response["followers"]
  end

# private def get_response
#   key = ENV['GITHUB_TOKEN']
#   HTTParty.get("mamallama:#{key} https://api.github.com/users/#{@login}")
# end
end
