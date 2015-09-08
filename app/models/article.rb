class Article < ActiveRecord::Base
  default_scope { order("rank ASC") }
end
