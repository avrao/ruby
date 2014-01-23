class CreateDcoResourceNames < ActiveRecord::Migration
  def change
    create_table :dco_resource_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
