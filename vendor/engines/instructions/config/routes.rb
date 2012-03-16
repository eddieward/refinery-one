Refinery::Application.routes.draw do
  resources :instructions

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :instructions do
      collection do
        post :update_positions
      end
    end
  end
end
