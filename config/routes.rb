Rails.application.routes.draw do
  resources :books
  post 'books' => 'books#create'
  post 'books/new' => 'homes#show'#わかりません（books_controller.rbのshowアクションを正しく設定すれば問題なく動くのか）
  get "/" => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
