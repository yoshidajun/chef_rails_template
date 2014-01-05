ChefRailsTemplate::Application.routes.draw do
  root :to => 'top#index'

  resources 'top', controller: 'Top', only: [:index] do
    collection do
      get 'index2'
    end
  end
end
