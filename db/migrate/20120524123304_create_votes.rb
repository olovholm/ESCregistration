class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :team
      t.references :country
      
      t.string :type

      t.timestamps
    end
  end
end
