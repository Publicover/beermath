class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :commenter
      t.text :body
      t.references :beer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
