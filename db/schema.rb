
ActiveRecord::Schema[7.0].define(version: 2023_02_27_114505) do
  create_table "products", force: :cascade do |t|
    t.text "product_name"
    t.text "product_category"
    t.decimal "price"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.integer "star_rating"
    t.text "comment"
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.text "email"
  end

end
