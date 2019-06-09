class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "name"
      t.string "nickname"
      t.string "email", default: "", null: false
      t.string "image"
      t.string "provider"
      t.string "uid"
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  end
end
