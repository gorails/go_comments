require 'test_helper'

class Comment::CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_comment = comment_comments(:one)
  end

  test "should get index" do
    get comment_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_comment_url
    assert_response :success
  end

  test "should create comment_comment" do
    assert_difference('Comment::Comment.count') do
      post comment_comments_url, params: { comment_comment: { body: @comment_comment.body, commentable_id: @comment_comment.commentable_id, commentable_type: @comment_comment.commentable_type, depth: @comment_comment.depth, parent_id: @comment_comment.parent_id, user_id: @comment_comment.user_id } }
    end

    assert_redirected_to comment_comment_url(Comment::Comment.last)
  end

  test "should show comment_comment" do
    get comment_comment_url(@comment_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_comment_url(@comment_comment)
    assert_response :success
  end

  test "should update comment_comment" do
    patch comment_comment_url(@comment_comment), params: { comment_comment: { body: @comment_comment.body, commentable_id: @comment_comment.commentable_id, commentable_type: @comment_comment.commentable_type, depth: @comment_comment.depth, parent_id: @comment_comment.parent_id, user_id: @comment_comment.user_id } }
    assert_redirected_to comment_comment_url(@comment_comment)
  end

  test "should destroy comment_comment" do
    assert_difference('Comment::Comment.count', -1) do
      delete comment_comment_url(@comment_comment)
    end

    assert_redirected_to comment_comments_url
  end
end
