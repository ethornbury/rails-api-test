
class PagesController < ApplicationController
  
  def home
    response = HTTParty.get("https://api.publicapis.org/categories")
    #console    #to open a space onscreen at localhost to view the response
    
    #in the console, bottom of the html page in localhost, type 'response'
    #reponse.body
    #JSON.parse(response.body)
    #JSON.parse(response.body)["categories"]

    @response = JSON.parse(response.body)
    @categories = @response["categories"]

    #another way
    @cat_facts = JSON.parse(HTTParty.get("https://cataas.com/api/tags").body)
    
    # https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=yourkey

    response2 = HTTParty.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=NYT_API")
    @nyt_data = JSON.parse(response2.body)

    
    

  end
end
