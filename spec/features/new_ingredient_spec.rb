require 'rails_helper'

RSpec.describe 'New ingredient', type: :feature do
  before(:each) do
    @user = User.create(name: 'john', email: 'john@gmail.com', password: '123456', password_confirmation: '123456')
    sign_in @user
    @food = Food.create(name: 'Pizza', measurement_unit: 'slice', price: '10', quantity: '1', user: @user)
    @recipe = Recipe.create(name: 'Pizza', description: 'Pizza', user: @user)
  end

  it 'has the link to create a new ingredient' do
    visit recipe_path(@recipe)
    expect(page).to have_link 'Add Ingredient'
  end

  it 'can create a new ingredient' do
    visit recipe_ingredients_path(@recipe)
    fill_in 'Quantity', with: 1
    select @food.name
    click_button 'Add ingredient'
    expect(page).to have_content 'Ingredient was successfully added.'
  end
end
