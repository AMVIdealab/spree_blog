module Spree
  class Article < Spree::Base
    validates :title, presence: true
  end
end
