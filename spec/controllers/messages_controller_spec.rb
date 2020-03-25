RSpec.describe MessagesController, type: :controller do
  let(:conversation) { create(:conversation) }

  describe '#create' do
    it 'creates the new message' do
      post :create, params: {
        message: { text: 'test', conversation_id: conversation.id }
      }

      expect(response).to have_http_status(:success)
    end
  end
end
