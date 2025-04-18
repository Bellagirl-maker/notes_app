class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  
  def index
    @notes = Note.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def created
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note, notice: 'Note was sucessfully created.'
    else
      render :new
    end
  end

    def update
      if @note.update(note_params)
        redirect_to @note, notice: 'Note was successfully updated'
      else
        render :edit
      end
    end

    def destroy
      @note.destroy
      redirect_to notes_path, notice: 'Note was successfully destroyed'
    end

    private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :content)
    end
end
