RSpec.describe MessagesChannel, type: :channel do
  let(:conversation) { create(:conversation) }

  it 'successfully subscribes' do
    subscribe conversation: conversation.id
    expect(subscription).to be_confirmed
  end
end
