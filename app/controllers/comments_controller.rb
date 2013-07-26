class CommentsController < ApplicationController
  expose(:comment)

  def create
    comment.commenter_id = params[:commenter_id]
    comment.commenter_type = params[:commenter_type]
    comment.user_id = current_user.id
    if comment.save
      flash[:notice] = t(:comment_has_been_added)
      if comment.commenter_type == 'driver'
        redirect_to users_driver_path(comment.commenter_id) + '#notes'
      end
    else
      render "new"
    end
  end
end
