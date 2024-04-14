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

    def edit
        @note = Note.find(params[:id])
    end

    def update
        @note = Note.find(params[:id])
        @note.update(name: params[:name], body: params[:body])
        redirect_to @note
    end

    def destroy
        @note = Note.find(params[:id])
        @note.delete
        redirect_to notes_url
    end
end