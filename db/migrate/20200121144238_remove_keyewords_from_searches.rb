class RemoveKeyewordsFromSearches < ActiveRecord::Migration[6.0]
  def change

    remove_column :searches, :keywords, :string
  end
end
