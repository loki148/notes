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
        @item = Item.new(item_params)
        if @item.save
            redirect_to @item
        else
            render 'new', status: :unprocessable_entity
        end
    end


    def edit
    end

    def update
        if @item.update(item_params)
            redirect_to item_path(@item.id)
        else
            render 'edit', status: :unprocessable_entity
        end
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