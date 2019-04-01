module Spree
  class Article < Spree::Base
   
    extend FriendlyId
    validates :title, presence: true
   
    friendly_id :title, use: %i[slugged history]
    
    has_one_attached :article_img
     
    private 
    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end

  end
end
