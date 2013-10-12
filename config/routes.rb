Gulfpointecapital::Application.routes.draw do
  %w[contact_us lease_products principals thank_you the_gulf_pointe_difference venture_leasing_criteria why_leasing].each do |action|
    get "/:action" => "pages##{action}", as: action
  end
  post "/contact" => "contact#create", as: 'contact'
  root :to => 'pages#home'
end
