require 'net/http'
require 'rest_client'
class AnimesController < ApplicationController
  def index
    res = RestClient.get 'http://myanimelist.net/api/account/verify_credentials.xml', {:user-agent => 'api-indiv-BDF02918341A555C9108D3AC352A2432', :user => 'djh3315', :password => 'apitest'}
    # url = URI.parse()
    # req = Net::HTTP::Get.new(url)
    # req.add_field('user', 'djh3315')
    # req.add_field('password', 'apitest')
    # req.add_field('user-agent', 'api-indiv-BDF02918341A555C9108D3AC352A2432')
    @response = res.inspect
  end
  def create
    # User Agent - api-indiv-BDF02918341A555C9108D3AC352A2432
    url = URI.parse('http://myanimelist.net/api/anime/search.xml?q=bleach')
    req = Net::HTTP::Get.new(url)
    req.add_field('user-agent', 'api-indiv-BDF02918341A555C9108D3AC352A2432')
    res = Net::HTTP.start(url.host, url.port) { |http|
      http.request(req)
    }
  end
end
