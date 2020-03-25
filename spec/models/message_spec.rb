RSpec.describe Message, type: :model do
  it { should belong_to(:conversation) }
end
