class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.date :date
      t.text :notes
      t.boolean :invoiced
      t.string :invoicenumber
      t.string :tifhd
      t.string :rawhd
      t.boolean :public

      t.timestamps
    end
  end
end
