module Spree
  class Article < Spree::Base
    extend FriendlyId
    validates :title, presence: true
    
    friendly_id :title, use: %i[slugged history]

    def should_generate_new_friendly_id?
      slug.blank? || name_changed?
    end

  end
end
