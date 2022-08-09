class Favorite < ApplicationRecord
  belongs_to :user   # ユーザー/お気に入り → 1:多
  belongs_to :shop   # 記事/お気に入り    → 1:多

  validates_uniqueness_of :post_id, scope: :user_id    # バリデーション（ユーザーと記事の組み合わせは一意）
  # 同じ投稿を複数回お気に入り登録させないため。
end
