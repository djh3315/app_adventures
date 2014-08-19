require 'net/http'
class AnimesController < ApplicationController
  def index
    url = URI.parse('http://myanimelist.net/api/anime/search.xml?q=bleach')
    req = Net::HTTP::Get.new(url)
    req.add_field('user-agent', 'api-indiv-BDF02918341A555C9108D3AC352A2432')
    res = Net::HTTP.start(url.host, url.port) { |http|
      http.request(req)
    }
    render :json => req.body
  end
  def create
    # User Agent - api-indiv-BDF02918341A555C9108D3AC352A2432
    url = URI.parse('http://myanimelist.net/api/anime/search.xml?q=bleach')
    req = Net::HTTP::Get.new(url)
    req.add_field('user-agent', 'api-indiv-BDF02918341A555C9108D3AC352A2432')
    res = Net::HTTP.start(url.host, url.port) { |http|
      http.request(req)
    }
    render :xml => req.body
  end
end
