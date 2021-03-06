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

ActiveRecord::Schema.define(:version => 20130723144836) do

  create_table "helpdesk_ticket_actions", :force => true do |t|
    t.integer  "ticket_id",                  :null => false
    t.integer  "user_id",                    :null => false
    t.string   "action_code", :limit => 30,  :null => false
    t.string   "assigned",    :limit => 100
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "helpdesk_ticket_actions", ["ticket_id"], :name => "index_helpdesk_ticket_actions_on_ticket_id"

  create_table "helpdesk_tickets", :force => true do |t|
    t.string   "title",                     :null => false
    t.text     "desc",                      :null => false
    t.integer  "user_id",                   :null => false
    t.integer  "patron_id",                 :null => false
    t.string   "status",      :limit => 30, :null => false
    t.integer  "assigned_id"
    t.date     "close_date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
