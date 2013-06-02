BizPkns::Application.routes.draw do

  localized do
    put 'make_member/:id' => 'users#make_member', as: :make_member
    match 'select_program/:program_id' => 'consultants#select_program', as: :select_program
    post 'update_attendance', to: 'members#update_attendance', as: 'update_attendance'
    match 'consultation' => "pages#consultation", as: :consultation
    match 'my_courses' => "pages#my_courses", as: :user_course_listing
    match 'program_users' => "members#program_member_list", as: :program_user_listing
    get  '/upcoming_courses' => 'pages#upcoming_courses', as: :course_listing
    scope '/upcoming_courses' do 
       match '/:id' => 'pages#upcoming_courses_show', as: :course_details
       match '/:id/user/:user_id' => 'pages#register_user', as: :user_course_registration
    end

    match 'business_directory' => 'pages#business_directory', as: :business_directory
    get 'city_dropdown' => 'application#city_dropdown', as: :city_dropdown
    get 'course_dropdown' => 'application#course_dropdown', as: :course_dropdown
    devise_for :users, path_names: {sign_in: "login", sign_out: "logout", sign_up: "signup"},
                        controllers: {registrations: 'registrations', confirmations: 'confirmations'}
    devise_for :consultants, path_names: {sign_in: "login",  sign_out: "logout"}
    devise_for :users do
      get "/admin/login" => "devise/sessions#new"
    end
    
    resources :admin
    resources :consultants
    resources :users do
      member do
        put 'update_membership' => 'users#update_membership'#, as: :update_membership
      end 
    end
    resources :programs
    resources :courses
    resources :members
    resources :educations
    resources :skills
    resources :attendance_list
    resources :pkns_users
    resources :businesses
    resources :past_attendances, except: [ :update, :destroy, :edit ]
    resources :business_categories
    resources :letters
    resources :surveys do
      member do
        post 'send_survey' => 'surveys#send_survey', as: :send_user
      end
    end
    # resources :users do
    #   collection { post :import }
    # end

    get "pages/welcome", as: 'welcome_page'
    get "consultants/:id/contact", :to => "consultants#contact", :as => 'contact_consultant'
    put "consultants/:id/contact/sent", :to => "consultants#sent", :as => 'contact_sent'
    put "admin/:id/update", :to => "admin#update", :as => "update_admin"

  end

  root :to => 'pages#welcome'

  #get 'new/:id', :to => "entrees#new", :as => 'new'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
