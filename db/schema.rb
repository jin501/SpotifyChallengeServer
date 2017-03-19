ActiveRecord::Schema.define(version: 20170319201434) do
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "favoriteCity"
  end

end
