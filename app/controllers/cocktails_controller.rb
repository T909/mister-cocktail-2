class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  def new
    @cocktail = Cocktail.new
  end
  def create

  end
  def show

  end
  def update

  end
  def destroy

  end
end
