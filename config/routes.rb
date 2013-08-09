Getlearned::Application.routes.draw do
  resource :users
  root to: "users#new"
end
