#
# オープンクラスのテスト
# 自分でeachメソッドを用意してみる
# イテレータは"whileキーワードを使った列挙"という動作のラッパに過ぎないと分かる
#
class Array
  def my_each
    #block_given = ブロックの有無
    return nil unless block_given?
    
    count = 0
    limit = self.length
    
    while count < limit do
      # yieldでブロックに評価させたいのはselfの個別の値
      yield(self[count])
      count += 1
    end
  end
end

# arrs = [1,2]
# arrs.my_each { |arr| puts arr } 

