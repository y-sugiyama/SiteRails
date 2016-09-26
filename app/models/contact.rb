class Contact < ApplicationRecord
  
#  attr_accessor :name, :email, :message
 
  validates :name, :presence => {:message => '名前を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
end

#データベースを使わないモデルはActiveModelを使って作ります。
#これだけでデータの格納やバリデーションができてしまいます。
#
