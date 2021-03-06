Rails.application.routes.draw do
  resources :users, except: [:edit, :new] do

    resources :contacts, only: [:index] do
      collection do
        get 'favorites'
      end
    end
  end

  resources :contacts, except: [:edit, :new, :index]

  resources :contact_shares, only: [:create, :destroy]

end
