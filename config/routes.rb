Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    resources :articles do
      collection do
        post :update_positions
      end
    end
  end
  resources :articles, only: [:index, :show], path: '/blog'
end
