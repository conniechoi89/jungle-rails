require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should not be valid without a first name' do
      user = User.new
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to include('First name can\'t be blank')
    end

  describe '.authenticate_with_credentials' do
    it 'should not be valid without a password' do
      user = User.new
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to include('Password can\'t be blank')
    end

  describe '.authenticate_with_credentials' do
    it 'should not be valid without a email' do
      user = User.new
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to include('Email can\'t be blank')
    end

    # it 'should be valid with a first name, last name, email' do
    #   cat = User.create!(first_name: 'connie')
    #   user = User.new(first_name: cat, last_name: 'choi', email:' example@domain.com ')
    #   expect(user).to be_valid
    # end

  end
  end
  end
end
