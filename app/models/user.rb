class User < ApplicationRecord
  has_one_attached :avatar
  has_rich_text :description
end
