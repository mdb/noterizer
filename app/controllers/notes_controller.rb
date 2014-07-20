class NotesController < ApplicationController
  before_filter :force_json

  def index
    @notes = [
      Note.new('note-one'),
      Note.new('note-two')
    ]
  end

  private

  def force_json
    request.format = :json
  end
end
