class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :team
      t.references :country
      
      
      #
      # The result of a teams votes for a single country
      #
      
      t.integer :show
      t.integer :dressing
      t.integer :english
      t.integer :musical_quality
      t.integer :total

      t.timestamps
    end
  end
end
