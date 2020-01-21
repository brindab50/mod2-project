class CreateCodeWords < ActiveRecord::Migration[6.0]
  def change
    create_table :code_words do |t|
      t.string :name
      t.integer :language_id
      t.integer :user_id

      t.timestamps
    end
  end
end
