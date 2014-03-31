# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140331112726) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "goldencobra_article_images", :force => true do |t|
    t.integer  "article_id"
    t.integer  "image_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "position"
  end

  create_table "goldencobra_article_widgets", :force => true do |t|
    t.integer  "article_id"
    t.integer  "widget_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goldencobra_articles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",                                                          :null => false
    t.datetime "updated_at",                                                          :null => false
    t.string   "url_name"
    t.string   "slug"
    t.text     "content"
    t.text     "teaser"
    t.string   "ancestry"
    t.boolean  "startpage",                        :default => false
    t.boolean  "active",                           :default => true
    t.string   "subtitle"
    t.text     "summary"
    t.text     "context_info"
    t.string   "canonical_url"
    t.boolean  "robots_no_index",                  :default => false
    t.string   "breadcrumb"
    t.string   "template_file"
    t.integer  "article_for_index_id"
    t.integer  "article_for_index_levels",         :default => 0
    t.integer  "article_for_index_count",          :default => 0
    t.boolean  "enable_social_sharing"
    t.boolean  "article_for_index_images",         :default => false
    t.boolean  "cacheable",                        :default => true
    t.string   "image_gallery_tags"
    t.string   "article_type"
    t.string   "external_url_redirect"
    t.string   "index_of_articles_tagged_with"
    t.string   "sort_order"
    t.boolean  "reverse_sort"
    t.string   "author_backup"
    t.integer  "sorter_limit"
    t.string   "not_tagged_with"
    t.boolean  "use_frontend_tags",                :default => false
    t.string   "dynamic_redirection",              :default => "false"
    t.boolean  "redirection_target_in_new_window", :default => false
    t.boolean  "commentable",                      :default => false
    t.datetime "active_since",                     :default => '2014-03-18 11:17:32'
    t.string   "redirect_link_title"
    t.string   "display_index_types",              :default => "show"
    t.integer  "author_id"
    t.text     "link_checker"
  end

  add_index "goldencobra_articles", ["ancestry"], :name => "index_goldencobra_articles_on_ancestry"
  add_index "goldencobra_articles", ["slug"], :name => "index_goldencobra_articles_on_slug"

  create_table "goldencobra_articletype_fields", :force => true do |t|
    t.integer  "articletype_group_id"
    t.string   "fieldname"
    t.integer  "sorter",               :default => 0
    t.string   "class_name"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "goldencobra_articletype_groups", :force => true do |t|
    t.string   "title"
    t.boolean  "expert",         :default => false
    t.boolean  "foldable",       :default => true
    t.boolean  "closed",         :default => true
    t.integer  "sorter",         :default => 0
    t.integer  "articletype_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "position",       :default => "first_block"
  end

  create_table "goldencobra_articletypes", :force => true do |t|
    t.string   "name"
    t.string   "default_template_file"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "goldencobra_authors", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "googleplus"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goldencobra_comments", :force => true do |t|
    t.integer  "article_id"
    t.integer  "commentator_id"
    t.string   "commentator_type"
    t.text     "content"
    t.boolean  "active",           :default => true
    t.boolean  "approved",         :default => false
    t.boolean  "reported",         :default => false
    t.string   "ancestry"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "goldencobra_crm_addresses", :force => true do |t|
    t.integer  "location_id"
    t.string   "title"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "goldencobra_crm_companies", :force => true do |t|
    t.string   "title"
    t.string   "legal_form"
    t.integer  "location_id"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "sector"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "goldencobra_crm_customers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "login"
    t.integer  "company_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goldencobra_crm_mandates", :force => true do |t|
    t.string   "external_id"
    t.string   "server_name"
    t.string   "server_ip"
    t.string   "reference_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "internal_id"
  end

  create_table "goldencobra_domains", :force => true do |t|
    t.string   "hostname"
    t.string   "title"
    t.string   "client"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "url_prefix"
    t.boolean  "main",       :default => false
  end

  create_table "goldencobra_helps", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "goldencobra_import_metadata", :force => true do |t|
    t.string   "database_owner"
    t.datetime "exported_at"
    t.string   "database_admin_first_name"
    t.string   "database_admin_last_name"
    t.string   "database_admin_phone"
    t.string   "database_admin_email"
    t.integer  "importmetatagable_id"
    t.string   "importmetatagable_type"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "goldencobra_imports", :force => true do |t|
    t.text     "assignment"
    t.string   "target_model"
    t.boolean  "successful"
    t.integer  "upload_id"
    t.string   "separator",         :default => ","
    t.text     "result"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "encoding_type"
    t.text     "assignment_groups"
  end

  create_table "goldencobra_locations", :force => true do |t|
    t.string   "lat"
    t.string   "lng"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "region"
    t.string   "country"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "title"
    t.string   "locateable_type"
    t.integer  "locateable_id"
    t.string   "street_number"
    t.boolean  "manual_geocoding", :default => false
  end

  create_table "goldencobra_menues", :force => true do |t|
    t.string   "title"
    t.string   "target"
    t.string   "css_class"
    t.boolean  "active",              :default => true
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "ancestry"
    t.integer  "sorter",              :default => 0
    t.text     "description"
    t.string   "call_to_action_name"
    t.string   "description_title"
    t.integer  "image_id"
    t.integer  "ancestry_depth",      :default => 0
    t.boolean  "remote",              :default => false
  end

  add_index "goldencobra_menues", ["ancestry"], :name => "index_goldencobra_menues_on_ancestry"

  create_table "goldencobra_metatags", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "article_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "metatagable_id"
    t.string   "metatagable_type"
  end

  create_table "goldencobra_permissions", :force => true do |t|
    t.string   "action"
    t.string   "subject_class"
    t.string   "subject_id"
    t.integer  "role_id"
    t.integer  "sorter_id",     :default => 0
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "operator_id"
  end

  create_table "goldencobra_roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "redirect_after_login", :default => "reload"
  end

  create_table "goldencobra_roles_users", :id => false, :force => true do |t|
    t.integer "operator_id"
    t.integer "role_id"
    t.string  "operator_type", :default => "User"
  end

  create_table "goldencobra_settings", :force => true do |t|
    t.string   "title"
    t.string   "value"
    t.string   "ancestry"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "data_type",  :default => "string"
  end

  create_table "goldencobra_trackings", :force => true do |t|
    t.text     "request"
    t.string   "session_id"
    t.string   "referer"
    t.string   "url"
    t.string   "ip"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "user_agent"
    t.string   "language"
    t.string   "path"
    t.string   "page_duration"
    t.string   "view_duration"
    t.string   "db_duration"
    t.text     "url_paremeters"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_term"
    t.string   "utm_content"
    t.string   "utm_campaign"
    t.string   "location"
  end

  create_table "goldencobra_uploads", :force => true do |t|
    t.string   "source"
    t.string   "rights"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.string   "alt_text"
    t.integer  "sorter_number"
  end

  create_table "goldencobra_vita", :force => true do |t|
    t.integer  "loggable_id"
    t.string   "loggable_type"
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "goldencobra_vita", ["loggable_id"], :name => "index_goldencobra_vita_on_loggable_id"

  create_table "goldencobra_widgets", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "css_name"
    t.boolean  "active"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "id_name"
    t.integer  "sorter"
    t.text     "mobile_content"
    t.string   "teaser"
    t.boolean  "default"
    t.text     "description"
    t.string   "offline_days"
    t.boolean  "offline_time_active"
    t.text     "alternative_content"
    t.date     "offline_date_start"
    t.date     "offline_date_end"
    t.text     "offline_time_week_start_end"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "translations", :force => true do |t|
    t.string   "locale"
    t.string   "key"
    t.text     "value"
    t.text     "interpolations"
    t.boolean  "is_proc",        :default => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "gender"
    t.string   "title"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "function"
    t.string   "phone"
    t.string   "fax"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "xing"
    t.string   "googleplus"
    t.boolean  "enable_expert_mode",     :default => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

  create_table "visitors", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
    t.boolean  "agb",                    :default => false
    t.boolean  "newsletter"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts"
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.string   "username"
    t.string   "loginable_type"
    t.integer  "loginable_id"
  end

  add_index "visitors", ["email"], :name => "index_visitors_on_email", :unique => true
  add_index "visitors", ["reset_password_token"], :name => "index_visitors_on_reset_password_token", :unique => true

end
