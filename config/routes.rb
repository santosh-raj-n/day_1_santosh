Rails.application.routes.draw do
  resources :products do
    collection do
      get "out-of-stock", to: "products#out_of_stock"
    end
  end

  resources :customers do
    collection do
      get "blacklisted-customers", to: "customers#blacklisted_customers"
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
