# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_07_211254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "category"
    t.string "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quiz_id"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "questions_choices", force: :cascade do |t|
    t.string "choice"
    t.string "right_choice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_id"
    t.index ["question_id"], name: "index_questions_choices_on_question_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.integer "result"
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "question_id"
    t.bigint "questions_choice_id"
    t.string "answer"
    t.bigint "user_id"
    t.index ["question_id"], name: "index_user_answers_on_question_id"
    t.index ["questions_choice_id"], name: "index_user_answers_on_questions_choice_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pseudo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "questions", "quizzes"
  add_foreign_key "questions_choices", "questions"
  add_foreign_key "quizzes", "users"
  add_foreign_key "user_answers", "questions"
  add_foreign_key "user_answers", "questions_choices"
  add_foreign_key "user_answers", "users"
end
