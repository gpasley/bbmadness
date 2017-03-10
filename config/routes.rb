Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sheets/my_brackets' => 'sheets#my_brackets', :as => :my_brackets
  get 'sheets/get_points' => 'sheets#get_points', :as => :points
  get 'sheets/leaders' => 'sheets#leaders', :as => :leaders
  get 'sheets/lock_sheets' => 'sheets#lock_sheets', :as => :lock_sheets

  resources :sheets, except: [ :index ]

  root to: "home#index"
end
