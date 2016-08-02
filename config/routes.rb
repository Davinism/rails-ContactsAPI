Rails.application.routes.draw do
  # get "users/new" => "users#new", :as => "new_user"
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show", :as => "user"
  # post "/users/", to: "users#create"
  # delete "/users/:id", to: "users#destroy"
  # patch "/users/:id", to: "users#update"
  # put "/users/:id", to: "users#update"
  # get "/users/:id/edit", to: "users#edit", as: "edit_user"

  resources "users", only: [:index, :show, :create, :update, :destroy]

  resources "contacts", only: [:show, :create, :update, :destroy]

  resources "contact_shares", only: [:create, :destroy]

  resources "users" do
    resources "contacts", only: :index
  end
end
