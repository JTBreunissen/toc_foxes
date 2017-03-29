class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :image
      t.string :location
      t.integer :spaces_available
      t.references :workshop, foreign_key: true
      t.references :sponsor, foreign_key: true
      t.references :attend, foreign_key: true
      t.boolean :public

      t.timestamps
    end
  end
end