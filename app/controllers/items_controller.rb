class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
    end

    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.create(title: params[:item][:title], expected_cost: params[:item][:expected_cost], is_done: params[:item][:is_done])
        redirect_to @item
    end


    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to item_path(@item.id)
    end

    def destroy
        @item = Item.find(params[:id])
        @item.delete
        redirect_to items_url
    end

    private 

    def item_params
        params.require(:item).permit(:title, :expected_cost, :is_done) 
    end
end