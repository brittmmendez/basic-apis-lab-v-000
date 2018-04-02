class RepositoriesController < ApplicationController

  def search
    @resp = Faraday.get 'https://api.github.com/search/repositories?q=' do |req|
      req.params['query'] = params[:query]
      render 'search'
  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories?q=' do |req|
      req.params['query'] = params[:query]
      render 'search'
    end
  end

end
