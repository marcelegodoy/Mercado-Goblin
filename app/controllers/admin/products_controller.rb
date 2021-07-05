module Admin
  class ProductsController < BaseController
    before_action :set_product, only: %i[show edit update destroy]

    def index
      @q = Product.ransack(params[:q])
      @products = @q.result
    end

    def show
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to admin_product_path(@product)
      else
        render :new
      end
    end

    def edit
    end

    def update
      @product.update(product_params)
      if @product.save
        redirect_to admin_product_path(@product)
      else
        render :edit
      end
    end

    def destroy
      @product.destroy
      redirect_to admin_products_path, notice: 'Produto deletado com sucesso'
    end

    private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :subtitle, :description, :price, :quantity, :active)
    end
  end
end
