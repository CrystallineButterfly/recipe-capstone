# frozen_string_literal: true

# rubocop:disable Style/Documentation

class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :preperation_time
      t.integer :cooking_time
      t.integer :description
      t.boolean :public

      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
