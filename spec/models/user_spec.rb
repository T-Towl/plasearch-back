require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe '#setup' do
    it 'Userが登録できていること' do
      user = User.new(name: 'Example User', email: 'user@example.com')
      expect(user.valid?).to eq true
    end
  end
end
