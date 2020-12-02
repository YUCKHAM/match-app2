class Reaction < ApplicationRecord
  # class_name: "User"を追加することで、to_userのモデルはUserモデルであるとRailsへ伝えることができます。上記のようなコードを追加することで、reaction.to_userやreaction.from_userのような記述が可能になります。

  # 今回to_user_idカラムとUserモデルがありreaction. to_userと記述できるようにしたいです。

  # belongs_to :to_userだけでは、「reaction.to_userを見つけるには、to_user_idカラムとToUserモデルを使えば良い」となってしまいます。 モデル名はUserモデルになってほ しいので、class_name: "User"を設定するとUserモデルを使 ってくれるようになります。
  belongs_to :to_user, class_name: "User"
  belongs_to :from_user, class_name: "User"

  enum status: { like: 0, dislike: 1 }
end
