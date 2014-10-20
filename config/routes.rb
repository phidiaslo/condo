class SubdomainPresent
  def self.matches?(request)
    request.subdomain.present?
  end
end

class SubdomainBlank
  def self.matches?(request)
  	request.subdomain.blank?
  end
end

Rails.application.routes.draw do
  resources :invoices

  resources :contacts

  resources :faqs

  resources :owners

  devise_for :residents
  get 'residents' => "residents#index"
  get 'residents/:id' => "residents#show", :as => :resident_show
  match 'residents/:id' => 'residents#destroy', :via => :delete, :as => :user_destroy_resident
  
  resources :bulletins

  resources :unittypes

  resources :units

  resources :properties
  
  constraints(SubdomainPresent) do
    root 'projects#index', as: :subdomain_root
  	devise_for :users
    resources :users, only: :index
    resources :projects, except: [:index, :show, :destroy]
  end
  
  constraints(SubdomainBlank) do
    root 'welcome#index'
    resources :accounts, only: [:new, :create]
  end
end
