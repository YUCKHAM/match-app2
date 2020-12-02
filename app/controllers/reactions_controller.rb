class ReactionsController < ApplicationController

  def create
    # find_or_initialize_byメソッドは、引数で渡したカラムでfindをかけて引っかからなかったらインスタンスを作成します。データベースに保存はしません
    reaction = Reaction.find_or_initialize_by(to_user_id: params[:user_id], from_user_id: current_user.id)
    reaction.update_attributes(
      status: params[:reaction]
    )
  end
end
