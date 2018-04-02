class RepositoriesController < ApplicationController

  def search
    query=params[:query]
    url= 'https://api.github.com/search/repositories?q=${query}'

  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories?q=' do |req|
      req.params['query'] = params[:query]
      render 'search'
    end
  end

end
