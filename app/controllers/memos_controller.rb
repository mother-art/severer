class MemosController < ApplicationController

  def index
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
  end

  private

  def memo_params
    params.require(:memo).permit(:body, :title).merge(user_id: current_user.id)
  end
end
