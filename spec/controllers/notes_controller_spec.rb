require 'rails_helper'

RSpec.describe NotesController, :type => :controller do
  before :each do
    get :index
  end

  describe '#index' do
    it 'successfully responds to requests' do
      expect(response).to be_success
    end

    it 'returns JSON' do
      expect(response.content_type).to eq 'application/json'
    end
  end
end
