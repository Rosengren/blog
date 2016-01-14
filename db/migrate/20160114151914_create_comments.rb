class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :commenttext
      t.string :author
      t.belongs_to :blogpost, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
