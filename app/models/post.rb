class Post < ApplicationRecord
  include ImageUploader[:image]
  
  has_many :taggings
  has_many :tags, through: :taggings
  
  validates :title, presence: true
  validates :image, presence: true
  validates :description, presence: true
  validates :category, presence: true
  
  def slug
    title.parameterize.downcase
  end
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).posts
  end

  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").
      joins(:taggings).group("taggings.tag_id")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
  
  def increase_visit
    self.visit_counter+=1
    save!
  end
    
end
