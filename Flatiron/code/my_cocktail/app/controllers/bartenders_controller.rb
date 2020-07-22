class BartendersController < ApplicationController

  # GET: /bartenders
  get "/bartenders" do
    erb :"/bartenders/index.html"
  end

  # GET: /bartenders/new
  get "/bartenders/new" do
    erb :"/bartenders/new.html"
  end

  # POST: /bartenders
  post "/bartenders" do
    redirect "/bartenders"
  end

  # GET: /bartenders/5
  get "/bartenders/:id" do
    erb :"/bartenders/show.html"
  end

  # GET: /bartenders/5/edit
  get "/bartenders/:id/edit" do
    erb :"/bartenders/edit.html"
  end

  # PATCH: /bartenders/5
  patch "/bartenders/:id" do
    redirect "/bartenders/:id"
  end

  # DELETE: /bartenders/5/delete
  delete "/bartenders/:id/delete" do
    redirect "/bartenders"
  end
end
