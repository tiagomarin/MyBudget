require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create!(id: 1, name: 'Test User', email: 'test@test.com', password: '12345678')
    @user.save
  end
  subject do
    Category.create!(
      name: 'Car',
      icon: 'Icon',
      user_id: @user.id
    )
  end
  before { subject.save }

  describe 'validate data' do
    it 'name should be "Car' do
      expect(subject.name).to eql('Car')
    end

    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an amount' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
