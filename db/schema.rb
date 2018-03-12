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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_03_12_202351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatbot_contents", force: :cascade do |t|
    t.string "chatbot_content_primary"
    t.string "chatbot_content_secondary"
    t.integer "chatbot_content_cemplexity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cluster_user_references", force: :cascade do |t|
    t.bigint "cluster_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cluster_id"], name: "index_cluster_user_references_on_cluster_id"
    t.index ["user_id"], name: "index_cluster_user_references_on_user_id"
  end

  create_table "clusters", force: :cascade do |t|
    t.bigint "rank_id"
    t.datetime "last_time_cbc_posted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rank_id"], name: "index_clusters_on_rank_id"
  end

  create_table "message_reaction_references", force: :cascade do |t|
    t.bigint "message_reaction_id"
    t.bigint "message_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_message_reaction_references_on_message_id"
    t.index ["message_reaction_id"], name: "index_message_reaction_references_on_message_reaction_id"
    t.index ["user_id"], name: "index_message_reaction_references_on_user_id"
  end

  create_table "message_reactions", force: :cascade do |t|
    t.string "reaction_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_references", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "cluster_id"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cluster_id"], name: "index_message_references_on_cluster_id"
    t.index ["message_id"], name: "index_message_references_on_message_id"
    t.index ["user_id"], name: "index_message_references_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "message_sent"
    t.string "message_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.integer "rank_id"
    t.boolean "rank_type"
    t.string "rank_name"
    t.string "rank_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "cluster_user_references", "clusters"
  add_foreign_key "cluster_user_references", "users"
  add_foreign_key "clusters", "ranks"
  add_foreign_key "message_reaction_references", "message_reactions"
  add_foreign_key "message_reaction_references", "messages"
  add_foreign_key "message_reaction_references", "users"
  add_foreign_key "message_references", "clusters"
  add_foreign_key "message_references", "messages"
  add_foreign_key "message_references", "users"
end
