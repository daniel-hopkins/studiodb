class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :date
      t.string :description
      t.string :tonalrange
      t.string :graduationcurve
      t.string :lens
      t.string :height
      t.text :notes
      t.boolean :printed

      t.timestamps
    end
  end
end
