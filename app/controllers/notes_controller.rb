class NotesController < ApplicationController
  before_filter :force_json

  def index
  end

  private

  def force_json
    request.format = :json
  end
end
