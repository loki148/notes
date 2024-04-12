class NotesController < ApplicationController
    def show
        @note = Note.find(params[:id])
    end

    def index
        @notes = Note.all
    end

    def new

    end

    def create
        @note = Note.create(name: params[:name], body: params[:body])
        redirect_to note_path(id: @note.id)
    end
end