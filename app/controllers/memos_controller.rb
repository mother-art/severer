class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path
    else
      redirect_to new_memo_path
    end
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    if @memo.update(memo_params)
      redirect_to memos_path
    else
      redirect_to edit_memos_path
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    if memo.destroy
    redirect_to memos_path
    else
    redirect_to memos_path
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:body, :title).merge(user_id: current_user.id)
  end
end