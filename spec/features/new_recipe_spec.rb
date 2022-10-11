require 'rails_helper'

RSpec.describe 'Test New recipe page', type: :feature do
  describe 'GET recipe index page' do
    before :each do
      @user = User.create(name: 'john', email: 'john@gmail.com', password: '123456', password_confirmation: '123456')
      @recipe = Recipe.create(name: 'Pizza ', description: 'Pizza', user: @user, preparation_time: 10,
                              cooking_time: 10)

      sign_in @user
    end
    scenario 'shows the correct content' do
      visit recipes_path
      sleep(5)
      expect(page).to have_content('Recipes')
    end
    feature 'Recipe list index page' do
      background { visit recipe_path(@recipe) }
      scenario 'See Recipe name' do
        expect(page).to have_content('Pizza')
      end
      scenario 'When I click a recipe, I am redirected to that recipes show page' do
        visit recipes_path
        click_link 'Pizza'
        expect(current_path).to eq recipe_path(@recipe)
      end
      scenario 'See Preparation time' do
        expect(page).to have_content('10')
      end
      scenario 'See Cooking time' do
        expect(page).to have_content('10')
      end
      scenario 'See description' do
        expect(page).to have_content('Pizza')
      end
    end
  end
end
