Rails.application.routes.draw do
  root 'tweets#index' #サーバアドレスだけ指定された場合の飛ばし先
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new' #ツイート投稿画面
  post 'tweets' => 'tweets#create'
end
