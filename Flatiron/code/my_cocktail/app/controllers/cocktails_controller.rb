class CocktailsController < ApplicationController

  
  get '/cocktails' do
    @cocktails = Cocktail.all
    erb :'/cocktails/index.html'
  end

  get '/cocktails/new' do
    @cocktail = Cocktail.new
    erb :'/cocktails/new.html'
  end

  post '/cocktails' do
    @cocktail = Cocktail.new(params[:cocktail])
    if @cocktail.save
      redirect '/cocktails'
    else
      erb :'cocktails/new.html'
    end
  end

  get '/cocktails/:id/edit' do
    set_cocktail
    erb :'/cocktails/edit.html'
  end
  
  get '/cocktails/:id' do
    set_cocktail
    if @cocktail
      erb :'cocktails/show.html'
    else
      redirect '/cocktails'
    end
  end

 

  patch '/cocktails/:id' do
    set_cocktail
    if @cocktail.update(
      name: params[:cocktail][:name],
      base_liquor: params[:cocktail][:base_liquor]
      )
      redirect "/cocktails/#{@cocktail.id}"
    else 
      erb :'cocktail/edit.html'
    end
  end

  delete '/cocktails/:id' do
    set_cocktail
    @cocktail.destroy
    redirect '/cocktails'
  end

  private
    def set_cocktail
      @cocktail = Cocktail.find_by_id(params[:id])
    end

end
