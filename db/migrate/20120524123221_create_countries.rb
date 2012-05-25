class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :nor_name
      t.string :short_id
      t.string :long_id
      t.string :actor_name
      t.string :song_name
      t.integer :population
      t.integer :abs_airports
      t.integer :abs_internetusers
      t.integer :per_obesity
      t.integer :birth_rate
      t.integer :areal
      t.string :img_url_big
      t.string :img_url_little
      t.string :img_act_img
      t.timestamps
    end
  end
end
