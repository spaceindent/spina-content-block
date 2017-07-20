Spina::Engine.routes.draw do
  namespace :admin do
    resources :content_blocks
  end
end
