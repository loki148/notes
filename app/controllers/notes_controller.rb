class NotesController < ApplicationController
    before_action :set_note ,only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @notes = Note.all
    end

    def new
        @note = Note.new
    end

    def create
        @note = Note.create(note_params)
        redirect_to note_path(id: @note.id)
    end

    def edit
    end

    def update
        @note.update(note_params)
        redirect_to @note
    end

    def destroy
        @note.delete
        redirect_to notes_url
    end


    private
    def note_params
        params.require(:note).permit(:name, :body)
    end

    def set_note
        @note = Note.find(params[:id])
    end
end