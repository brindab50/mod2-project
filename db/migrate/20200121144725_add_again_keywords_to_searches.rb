class AddAgainKeywordsToSearches < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :keywords, :string
  end
end
