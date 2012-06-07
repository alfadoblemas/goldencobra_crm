ActiveAdmin.setup do |config|

  config.site_title = "GoldenCobra"

  config.load_paths << "#{Goldencobra::Engine.root}/admin/"
  config.load_paths << "#{GoldencobraCrm::Engine.root}/admin/"

  config.default_namespace = :admin
  config.authentication_method = :authenticate_user!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.register_stylesheet 'goldencobra/chosen.css'
  config.register_javascript 'goldencobra/active_admin.js' 
  config.register_javascript 'goldencobra_events/admin.js' 
  config.register_javascript "https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
  config.register_javascript "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"
  config.register_javascript "goldencobra/jquery.tinymce.js"
  config.register_javascript 'goldencobra/chosen.jquery.min.js' 


end
