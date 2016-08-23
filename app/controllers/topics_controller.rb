class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: [:edit, :update, :destroy, :show]
  before_action :permit_user, only: [:destroy, :update]

  def index
    @topics = Topic.all.order(updated_at: :desc)
  end

  # showアクションを定義します。入力フォームと一覧を表示するためインスタンスを２つ生成します。
  def show
    @comment = @topic.comments.build
    @comments = @topic.comments
  end

  def new
    if params[:back]
      @topic = Topic.new(topics_params)
    else
      @topic = Topic.new
    end
  end

  def create
    @topic = Topic.new(topics_params)
    @topic.user_id = current_user.id
    if @topic.save
      flash[:success] = "ブログを作成しました！"
      redirect_to topics_path
      #NoticeMailer.sendmail_topic(@topic).deliver
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    @topic.update(topics_params)
    if @topic.invalid?
      render action: 'edit'
    else
      flash[:success] = "トピックを更新しました！"
      redirect_to topics_path
    end
  end

  def destroy
    @topic.destroy
    flash[:success] = "トピックを削除しました！"
    redirect_to topics_path
  end

  def confirm
    @topic = Topic.new(topics_params)
    render 'new' if @topic.invalid?
  end

  private
    def topics_params
      params.require(:topic).permit(:content, :image, :image_cache)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end

    def permit_user
      redirect_to topics_path unless current_user.id == @topic.user.id || current_user.admin?
    end
end
