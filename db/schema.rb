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

ActiveRecord::Schema.define(:version => 20130703063428) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.integer  "party_id"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consultant_services", :force => true do |t|
    t.integer  "total_promised"
    t.integer  "total_received"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "initiative_id"
    t.integer  "firm_id"
  end

  create_table "contracts", :force => true do |t|
    t.integer  "committee_id"
    t.integer  "firm_id"
    t.string   "services"
    t.integer  "amount_promised"
    t.integer  "amount_received"
    t.integer  "initiative_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "contributions", :force => true do |t|
    t.integer  "amount"
    t.integer  "initiative_id"
    t.integer  "committee_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "endorsements", :force => true do |t|
    t.integer  "initiative_id"
    t.boolean  "supporting"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "by_club"
    t.integer  "club_id"
    t.integer  "person_id"
  end

  create_table "expenditures", :force => true do |t|
    t.integer  "amount"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "initiative_id"
    t.integer  "committee_id"
  end

  create_table "firms", :force => true do |t|
    t.string   "name"
    t.text     "serivces"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone"
    t.string   "email"
  end

  create_table "initiatives", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "status",              :limit => 255
    t.integer  "year",                :limit => 255
    t.integer  "contributions"
    t.integer  "expenditures"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "initiative_type"
    t.string   "more_info"
    t.string   "ballot_code"
    t.float    "support_rate",        :limit => 255
    t.integer  "initiative_id"
    t.integer  "committee_id"
    t.integer  "total_contributions"
    t.integer  "total_expenditures"
    t.integer  "month"
    t.integer  "yes_votes"
    t.integer  "no_votes"
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "initiative_id"
  end

  create_table "officials", :force => true do |t|
    t.integer  "person_id"
    t.string   "office"
    t.integer  "politicalcommittee_id"
    t.string   "duties"
    t.integer  "issue_id"
    t.date     "term_begin"
    t.date     "term_end"
    t.string   "term_limit"
    t.date     "next_election"
    t.integer  "firm_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "politicalcommittees", :force => true do |t|
    t.string   "name"
    t.integer  "issue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "issue_ids"
  end

end
