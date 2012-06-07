Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :users, ActiveAdmin::Devise.config

  mount Goldencobra::Engine => '/'

  mount GoldencobraCrm::Engine => "/goldencobra_crm"
end
