class RestaurantsController < ApplicationController
    # Restaurant :resources
    def index
      @restaurants = Restaurant.all
    end

    def new
      @restaurant = Restaurant.new
    end

    def create
      @restaurant = Restaurant.new(params_restaurant)
      if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
    end

    def edit
      @restaurant = set_restaurant
    end

    def update
      @restaurant = set_restaurant
      @restaurant.update(params_restaurant)
      redirect_to restaurants_path
    end

    def destroy
      @restaurant = set_restaurant
      @restaurant.destroy
      redirect_to restaurants_path
    end

    def show
      @restaurant = set_restaurant
    end

 # def index
 #    @articles = Article.all
 #  end

 #  def create
 #    @article = Article.create(params_article)
 #    redirect_to articles_path
 #  end

 #  def update
 #    @article = set_article
 #    @article.update(params_article)
 #    redirect_to articles_path
 #  end

 #  def destroy
 #    @article = set_article
 #    @article.destroy
 #    redirect_to articles_path
 #  end

 #  def edit
 #    @article = set_article
 #  end

 #  def new
 #    @article = Article.new
 #  end

 #  def show
 #    @article = Article.find(params[:id])
 #  end


    private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def params_restaurant
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end
end
