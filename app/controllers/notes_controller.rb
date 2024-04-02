class NotesController < ApplicationController
    def show
        @instnote = Note.new(title:'the best of the best', body: 'lorem ipsum ...')
    end
end