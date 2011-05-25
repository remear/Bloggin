class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  include Mongoid::Taggable
  
  field :title
  field :content
  field :publish, :type => Boolean, :default => true
  
  slug :title
  
  index :title
  
  belongs_to_related :user
  # references_many :tags, :dependent => :destroy
  # 
  # accepts_nested_attributes_for :tags, :allow_destroy => :true, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

  def full_url
    "/posts/#{slug}"
  end

end
