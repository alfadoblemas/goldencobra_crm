# encoding: utf-8

GoldencobraCrm::Engine.routes.draw do

  namespace "api" do
    namespace "v1" do
      resources :mandates, only: [:create]
    end
  end

end
