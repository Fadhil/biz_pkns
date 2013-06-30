BizPkns::Application.routes.draw do

  mount RedactorRails::Engine => '/redactor_rails'

  localized do
    get "reports/users" => 'reports#users'
    get "reports/consultants" => 'reports#consultants'
    get "reports/programs" => 'reports#programs'
    get "newsletters/history" => 'newsletters#history', as: "history"

    get "newsletters/new/:id" => 'newsletters#use_template', as: "use_template"
    get "home" => "pages#home"
    put 'make_member/:id' => 'users#make_member', as: :make_member
    match 'select_program/:program_id' => 'consultants#select_program', as: :select_program
    post 'update_attendance', to: 'members#update_attendance', as: 'update_attendance'
    get "newsletters/history" => 'newsletters#history', as: "history"
    get "newsletters/new/:id" => 'newsletters#use_template', as: "use_template"
    get "newsletters/preview/:id" => 'newsletters#preview', as: "preview_newsletter"
    get "letters/history" => 'letters#history', as: "letters_history"
    get "letters/list" => 'letters#list', as: "letters_list"
    get "letters/preview/:id" => 'letters#preview', as: "preview_letter"
    match 'consultation' => "pages#consultation", as: :consultation
    match 'my_courses' => "pages#my_courses", as: :user_course_listing
    match 'program_users' => "members#program_member_list", as: :program_user_listing
    match "contact" => "pages#contact", as: :contact
    match 'create_message' => 'messages#create', as: :create_message
    get  '/upcoming_courses' => 'pages#upcoming_courses', as: :course_listing
    get 'blogs/tag/:tag', to: 'blogs#all', as: :tag
    match 'blog', to: 'blogs#all', as: :category_blog
    get 'blog/:id', to: 'blogs#show', as: :show_blog
    scope '/upcoming_courses' do 
       match '/:id' => 'pages#upcoming_courses_show', as: :course_details
       match '/:id/user/:user_id' => 'pages#register_user', as: :user_course_registration
    end

    match "/delayed_job" => DelayedJobWeb, :anchor => false
    match 'business_directory' => 'pages#business_directory', as: :business_directory
    get 'city_dropdown' => 'application#city_dropdown', as: :city_dropdown
    get 'course_dropdown' => 'application#course_dropdown', as: :course_dropdown
    devise_for :users, path_names: {sign_in: "login", sign_out: "logout", sign_up: "signup"},
                        controllers: {registrations: 'registrations', confirmations: 'confirmations'}
    devise_for :consultants, path_names: {sign_in: "login",  sign_out: "logout"}
    devise_for :users do
      get "/admin/login" => "devise/sessions#new"
    end
    
    resources :reports, only: [] do
      collection do
        match 'users' => 'reports#users', as: :user
        match "consultants" => 'reports#consultants', as: :consultant
        match "programs" => 'reports#programs', as: :program
      end
    end
    resources :admin
    resources :adverts do
      member do 
        put 'activate' 
        put 'assign_weight'
        put 'make_request'
        post 'new'
      end
    end
    resources :consultants do
      member do
        match 'my_adverts', as: :my_adverts
      end
    end
    resources :users do
      member do
        put 'update_membership' => 'users#update_membership'#, as: :update_membership
        get 'surveys'
        get 'letters', as: :letter_user
        match 'my_adverts', as: :my_adverts
      end 
    end
    resources :programs
    resources :courses
    resources :members
    resources :educations
    resources :skills
    resources :blogs
    resources :attendance_list
    resources :pkns_users
    resources :businesses
    resources :email, :only => [:show]
    namespace :newsletters do resources :templates end
    resources :newsletters do
      member do
        post 'send_newsletter' => 'newsletters#send_newsletter', as: :send_user
      end
    end
    resources :past_attendances, except: [ :update, :destroy, :edit ] do
      collection do
        get 'uploaded'
      end
    end
    resources :business_categories
    resources :letters do
      member do
        post 'send_letter' => 'letters#send_letter', as: :send_user
        match 'generate_letter' => 'letters#generate_letter', as: :generate
      end
    end
    resources :surveys do
      member do
        post 'send_survey' => 'surveys#send_survey', as: :send_user
      end
      member do 
        get 'take'
        post 'take' => 'surveys#finish_survey'
        get 'report'
        post 'report'
      end
    end
    # resources :users do
    #   collection { post :import }
    # end

    scope '/portal' do
      get 'home' => 'portals#home'
      get 'contact' => 'portals#contact'
      get 'course' => 'portals#course'
      get 'course/:id' => 'portals#course_show', as: :portal_course_show
    end
    get "pages/welcome", as: 'welcome_page'
    get "pages/adview", as: 'adview'
    get "consultants/:id/contact", :to => "consultants#contact", :as => 'contact_consultant'
    put "consultants/:id/contact/sent", :to => "consultants#sent", :as => 'contact_sent'
    get "letters/:id/compose", :to => "letters#compose", :as => 'compose_letter'
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
