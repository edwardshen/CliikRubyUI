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

ActiveRecord::Schema.define(:version => 20110414105548) do

  create_table "cities", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "taipei"
    t.boolean  "hong_kong"
    t.boolean  "singapore"
    t.boolean  "tokyo"
    t.boolean  "kyoto"
    t.boolean  "seoul"
    t.boolean  "shanghai"
    t.boolean  "beijing"
    t.boolean  "new_york"
    t.boolean  "san_francisco"
    t.boolean  "los_angeles"
    t.boolean  "vancouver"
    t.boolean  "toronto"
    t.boolean  "barcelona"
    t.boolean  "madrid"
    t.boolean  "paris"
    t.boolean  "london"
    t.boolean  "berlin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hairstyles", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "happy_thoughts", :force => true do |t|
    t.integer  "user_id"
    t.text     "happy_thought"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indoor_activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "concert"
    t.boolean  "painting"
    t.boolean  "cooking"
    t.boolean  "reading"
    t.boolean  "performance"
    t.boolean  "instrument"
    t.boolean  "video_gaming"
    t.boolean  "cleaning"
    t.boolean  "yoga"
    t.boolean  "puzzle_game"
    t.boolean  "lounge"
    t.boolean  "clubbing"
    t.boolean  "KTV"
    t.boolean  "comic"
    t.boolean  "restaurent_exploring"
    t.boolean  "movie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outdoor_activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "biking"
    t.boolean  "hiking"
    t.boolean  "surfing"
    t.boolean  "snowboarding_skiing"
    t.boolean  "swimming"
    t.boolean  "photography"
    t.boolean  "fishing"
    t.boolean  "gym"
    t.boolean  "basketball"
    t.boolean  "baseball"
    t.boolean  "tennis"
    t.boolean  "suburban"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outfit_styles", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "gender"
    t.date     "birthday"
    t.integer  "height"
    t.string   "color"
    t.string   "location"
    t.string   "date_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "way_to_travels", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "cruise"
    t.boolean  "island"
    t.boolean  "known_city"
    t.boolean  "unknown_city"
    t.boolean  "exotic"
    t.boolean  "bag_packer"
    t.boolean  "bed_and_breakfast"
    t.boolean  "boutique_hotel"
    t.boolean  "chain_hotel"
    t.boolean  "surprise"
    t.boolean  "wander"
    t.boolean  "planned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "what_to_dos", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "movie"
    t.boolean  "snack"
    t.boolean  "shopping"
    t.boolean  "quick_meal"
    t.boolean  "nice_meal"
    t.boolean  "painting"
    t.boolean  "cooking"
    t.boolean  "performance"
    t.boolean  "museum"
    t.boolean  "walk"
    t.boolean  "suprise_me"
    t.boolean  "her_choice"
    t.string   "payment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_cities", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "taipei"
    t.boolean  "hong_kong"
    t.boolean  "singapore"
    t.boolean  "tokyo"
    t.boolean  "kyoto"
    t.boolean  "seoul"
    t.boolean  "shanghai"
    t.boolean  "beijing"
    t.boolean  "new_york"
    t.boolean  "san_francisco"
    t.boolean  "los_angeles"
    t.boolean  "vancouver"
    t.boolean  "toronto"
    t.boolean  "barcelona"
    t.boolean  "madrid"
    t.boolean  "paris"
    t.boolean  "london"
    t.boolean  "berlin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_hairstyles", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_indoor_activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "concert"
    t.boolean  "painting"
    t.boolean  "cooking"
    t.boolean  "reading"
    t.boolean  "performance"
    t.boolean  "instrument"
    t.boolean  "video_gaming"
    t.boolean  "cleaning"
    t.boolean  "yoga"
    t.boolean  "puzzle_game"
    t.boolean  "lounge"
    t.boolean  "clubbing"
    t.boolean  "KTV"
    t.boolean  "comic"
    t.boolean  "restaurent_exploring"
    t.boolean  "movie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_outdoor_activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "biking"
    t.boolean  "hiking"
    t.boolean  "surfing"
    t.boolean  "snowboarding_skiing"
    t.boolean  "swimming"
    t.boolean  "photography"
    t.boolean  "fishing"
    t.boolean  "gym"
    t.boolean  "basketball"
    t.boolean  "baseball"
    t.boolean  "tennis"
    t.boolean  "suburban"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_outfit_styles", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "gender"
    t.integer  "age_from"
    t.integer  "age_to"
    t.integer  "height_from"
    t.integer  "height_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_way_to_travels", :force => true do |t|
    t.integer  "user_id"
    t.string   "all_selected"
    t.boolean  "cruise"
    t.boolean  "island"
    t.boolean  "known_city"
    t.boolean  "unknown_city"
    t.boolean  "exotic"
    t.boolean  "bag_packer"
    t.boolean  "bed_and_breakfast"
    t.boolean  "boutique_hotel"
    t.boolean  "chain_hotel"
    t.boolean  "surprise"
    t.boolean  "wander"
    t.boolean  "planned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
