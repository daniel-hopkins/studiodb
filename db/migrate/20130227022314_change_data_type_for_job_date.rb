class ChangeDataTypeForJobDate < ActiveRecord::Migration
  def up
    change_table :jobs do |t|
      t.change :date, :string
    end
  end

  def down
    change_table :jobs do |t|
      t.change :date, :date
    end
  end
end
