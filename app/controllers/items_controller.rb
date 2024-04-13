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
        @item = Item.create(title: params[:name], expected_cost: params[:expected_cost], is_done: params[:is_done])
        redirect_to @item
    end
end