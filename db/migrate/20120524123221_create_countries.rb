class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :nor_name
      t.int :population
      t.int :abs_airports
      t.int :abs_internetusers
      t.int :per_obesity
      t.int :birth_rate
      t.int :areal
      t.string :img_url_big
      t.string :img_url_little
      t.timestamps
    end
  end
end
