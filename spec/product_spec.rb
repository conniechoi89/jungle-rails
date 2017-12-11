require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
  it 'should not be valid without a name' do
    product = Product.new
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to include('Name can\'t be blank')
  end

  it 'should not be valid without a price' do
    product = Product.new
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to include('Price can\'t be blank')
  end

  it 'should not be valid without a quantity' do
    product = Product.new
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to include('Quantity can\'t be blank')
  end

  it 'should not be valid without a category' do
    product = Product.new
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to include('Category can\'t be blank')
  end

  it 'should be valid with a name, price, quantity, category' do
    cat = Category.create!(name: 'Furniture')
    product = Product.new(name: 'Sofa', price: 5, quantity: 3, category: cat)
    expect(product).to be_valid
  end

end
end