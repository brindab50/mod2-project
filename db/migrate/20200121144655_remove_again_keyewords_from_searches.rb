class RemoveAgainKeyewordsFromSearches < ActiveRecord::Migration[6.0]
  def change

    remove_column :searches, :keyewords, :string
  end
end
