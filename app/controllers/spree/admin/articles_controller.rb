module Spree
  module Admin
    class ArticlesController < ResourceController
      
      def index
        @articles = Spree::Article.all
      end
        
      private
      def article_params
        params.require(:article).permit(:title, :body)
      end

    end
  end
end

