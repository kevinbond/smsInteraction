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

ActiveRecord::Schema.define(:version => 20110606175206) do

  create_table "tropo_answers", :force => true do |t|
    t.integer  "tropo_session_id"
    t.integer  "tropo_question_id"
    t.string   "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tropo_messages", :force => true do |t|
    t.string   "channel"
    t.string   "network"
    t.string   "from"
    t.string   "to"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tropo_session_id"
  end

  create_table "tropo_questions", :force => true do |t|
    t.string   "question_text"
    t.string   "valid_choices"
    t.string   "invalid_message"
    t.integer  "timeout"
    t.integer  "attempts"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "tropo_sessions", :force => true do |t|
    t.string   "session_id"
    t.string   "network"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "channel"
    t.string   "entry_point"
  end

  create_table "users", :force => true do |t|
    t.string   "authentication_token"
    t.integer  "failed_attempts",      :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "sign_in_count",        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
