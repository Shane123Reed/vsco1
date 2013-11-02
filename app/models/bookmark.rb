class Bookmark
  include Mongoid::Document

  field :url, type: String
  
  has_and_belongs_to_many :iusers, class_name: 'User', inverse_of: :uimages

end