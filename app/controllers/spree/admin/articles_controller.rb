module Spree
  module Admin
    class ArticlesController < ResourceController
    
      def index
        @articles = Spree::Article.all
      end

       
      private
      
      def find_resource
        Article.friendly.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :body, :article_img)
      end

    end
  end
end

