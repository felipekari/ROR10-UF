Rails.application.routes.draw do
  get "uf/:date", to: "ufs#query"
  get "client/:name", to: "clients#count_question"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
