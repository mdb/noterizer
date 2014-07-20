require 'rails_helper'

RSpec.describe NotesController, :type => :controller do
  before :each do
    stub_note_request('note-one')
    stub_note_request('note-two')

    get :index
  end

  describe '#index' do
    it 'successfully responds to requests' do
      expect(response).to be_success
    end

    it 'returns JSON' do
      expect(response.content_type).to eq 'application/json'
    end

    context 'the @notes it assigns' do
      it 'is an array containing 2 items' do
        expect(assigns(:notes).length).to eq 2
      end

      it 'is an array of Note models' do
        assigns(:notes).each do |note|
          expect(note).to be_a Note
        end
      end
    end
  end
end
