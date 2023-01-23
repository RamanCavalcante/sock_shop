module Admin
  class ProductsController < BaseController
    before_action :set_product, only: [:edit, :update, :show, :destory]

    def index
      @products = Product.all
    end

    def edit
      @product = Product.find(params:[id])
    end

    def new
      @product = Product.new
    end

    def show
    end

    def create
      @product = Product.new(product_params)

      respond_to  do |format|
        if @product.save
          format.html {redirect_to admin_products_path(@product), notice: 'product created successfully'}
        else
          format.html {render :new, status: :unprocessable_entity}
        end
      end
    end

    def update
      respond_to do |format|
        if @product.update(product_params)
          format.html {redirect_to admin_products_path(@product), notice:''}
        else
          format.html {render :edit, status: :unprocessable_entity}
        end
      end
    end

    def destroy
      @product.destroy

      respond_to do |format|
        format.html {redirect_to admin_products_path, notice:''}
      end
    end


    private

    def product_params
      params.require(:product).permit(:name, :description, :price, :publish, :category_id)
    end

    def set_product
      @product = Product.find(params[:id])
    end
  end
end
