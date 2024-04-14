class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
    end

    def index
        @items = Item.all
    end

    def new
    end

    def create
        @item = Item.create(title: params[:title], expected_cost: params[:expected_cost], is_done: params[:is_done])
        redirect_to @item
    end


    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        @item.update(title:params[:title] ,expected_cost:params[:expected_cost], is_done:params[:is_done])
        redirect_to item_path(@item.id)
    end

    def destroy
        @item = Item.find(params[:id])
        @item.delete
        redirect_to items_url
    end
end