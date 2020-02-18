Rails.application.routes.draw do

  get 'tasks', to: 'task#index', as: :tasks

  get 'tasks/new', to: 'task#new'
  post 'tasks', to: 'task#create'

  get 'tasks/:id/edit', to: 'task#edit'
  patch 'task/:id', to: 'task#update'

  get 'tasks/:id', to: 'task#show', as: :task

  delete 'tasks/:id', to: 'task#destroy'
end
