class ItemsController < ApplicationController

    before_action :set_item, only: [:show, :edit,:update, :destroy]

    def show
    end

    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.create(item_params)
        redirect_to @item
    end


    def edit
    end

    def update
        @item.update(item_params)
        redirect_to item_path(@item.id)
    end

    def destroy
        @item.delete
        redirect_to items_url
    end

    private 

    def item_params
        params.require(:item).permit(:title, :expected_cost, :is_done) 
    end

    def set_item
        @item = Item.find(params[:id])
    end
end