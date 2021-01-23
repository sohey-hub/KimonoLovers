class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :title,       null: false
      t.text       :explanation, null: false
      t.integer    :region_id,   null: false
      t.integer    :genre_id,    null: false
      t.references :user,        foreign_key: true

      t.timestamps
    end
  end
end
