class ComicsController < ApplicationController
  def index
    if params[:sort] == "price_low_to_high"
      @comics = Comic.all.order(:price)
    elsif params[:sort] == "price_high_to_low"
      @comics = Comic.all.order(:price => :desc)
    elsif params["search-term"]
      @comics = Comic.where("name LIKE ?", "%#{params['search-term']}%")
    elsif params[:sort] == "discount_items"
      @comics = Comic.where("price < ?", 10)
    else
      @comics = Comic.all
    end
    # @comic_id = Comic.find_by(params[])
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @comic1 = Comic.new(
      name: params["comic_name"],
      price: params["comic_price"],
      description: params["comic_description"]
    )
    @comic1.save
    flash[:success] = "Created comic"
    redirect_to "/comics/#{@comic1.id}"
  end

  def show
    comic_id = params[:id]
    if params[:sort] == "random_item"
      shuffled_products = Comic.all.shuffle
      @comic = shuffled_products.first
    else
      @comic = Comic.find_by(id: comic_id)
    end
    render 'show.html.erb'
  end

  def edit
    @comic = Comic.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @comic = Comic.find_by(id: params[:id])
    @comic.update(
      name: params["comic_name"],
      price: params["comic_price"],
      image: params["comic_image"],
      description: params["comic_description"]
    )
    flash[:success] = "Updated comic"
    redirect_to "/comics/#{@comic.id}"
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    flash[:danger] = "Deleted comic."
    redirect_to "/comics"
  end
end
