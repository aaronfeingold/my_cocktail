class CreateBartenders < ActiveRecord::Migration
  def change
    create_table :bartenders do |t|

      t.timestamps null: false
    end
  end
end
