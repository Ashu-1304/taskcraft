Rails.application.routes.draw do
  post 'hires',to: "hires#create"
  post 'contacts',to: "contacts#create"
end
