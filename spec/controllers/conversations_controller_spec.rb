RSpec.describe ConversationsController, type: :controller do
  let(:conversation) { create(:conversation) }

  describe '#index' do
    it 'returns conversations list' do
      get :index

      expect(response).to have_http_status(:success)
    end
  end

  describe '#create' do
    it 'creates the new conversation' do
      post :create, params: {
        conversation: { title: 'test' }
      }

      expect(response).to have_http_status(:success)
    end
  end
end
