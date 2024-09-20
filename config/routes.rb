Rails.application.routes.draw do
  # get "/articles" => "articles#list"
  # get "/articles", to: "articles#list"

  # root to: "home#welcome"

  # get 'photos/:id', to: 'photos#show', defaults: { format: 'jpg' }
  # Rails would match photos/12 to the show action of PhotosController, and set params[:format] to "jpg".

  # get 'exit', to: 'sessions#destroy', as: :logout

  # get 'photos/*other', to: 'photos#unknown'
  # This route would match photos/12 or /photos/long/path/to/12, setting params[:other] to "12" or "long/path/to/12".

  # get 'books/*section/:title', to: 'books#show'
  # would match books/some/section/last-words-a-memoir with params[:section] equals 'some/section', and params[:title] equals 'last-words-a-memoir'.
  resources :tasks, only: :index
end
