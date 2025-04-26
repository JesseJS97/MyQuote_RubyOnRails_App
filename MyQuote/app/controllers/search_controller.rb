class SearchController < ApplicationController
  def index
    category_query = params[:category_query]
if category_query.present?
@quotesmatch = Quote.joins(:quotecategories, :categories)
.where("categories.cat_name LIKE ?", "%#{category_query}%").distinct
    end
  end
end
