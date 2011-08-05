class Post < ActiveRecord::Base
  belongs_to :user
  
  acts_as_taggable
  
  def full_url
    "/posts/#{self.slug}"
  end
end
