class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true, type: :bigint
      t.references :book, null: false, foreign_key: true, type: :bigint
      t.text :content

      t.timestamps
    end
  end
end
