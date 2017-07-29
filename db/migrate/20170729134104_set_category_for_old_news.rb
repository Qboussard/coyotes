class SetCategoryForOldNews < ActiveRecord::Migration
  def change
			News.where(category: nil).find_each do |news|
			news.category = 'article'
			news.save
		end
  end
end
