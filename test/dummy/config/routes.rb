Rails.application.routes.draw do
  root to: "test#show"
  resources :users
  match "/timeline/get" => "timeline#show"
end
