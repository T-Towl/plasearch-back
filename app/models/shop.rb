class Shop < ApplicationRecord
  # React側でsearch機能を実装したため、一時コメントアウト
  
  # def self.search(search) #self.はShop.を意味する
  #   if search
  #     where(['username LIKE ?', "%#{search}%"]) #検索とuseanameの部分一致を表示。
  #   else
  #     all #全て表示させる
  #   end
  # end

end
