class PagesController < ApplicationController
  def home
    response = HTTParty.get("https://api.publicapis.org/categories")
    console #to open a space onscreen at localhost to view the response
    
    #in the console, bottom of the html page in localhost, type 'response'
    #reponse.body
    #JSON.parse(response.body)
    #JSON.parse(response.body)["categories"]

    @response = JSON.parse(response.body)
    @categories = @response["categories"]

    #another way
    @cat_facts = JSON.parse(HTTParty.get("https://cataas.com/api/tags").body)
    
  end
end
