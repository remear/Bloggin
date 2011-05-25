module ApplicationHelper
  def tag_list(post)
    post.tags.map { |t| t.content }.join(", ")
  end
end
