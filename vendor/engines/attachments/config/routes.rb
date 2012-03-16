Refinery::Application.routes.draw do
  resources :attachments

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :attachments do
      collection do
        post :update_positions
      end
    end
  end
end
