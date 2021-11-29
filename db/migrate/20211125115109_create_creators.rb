class CreateCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.string :stage_name
      t.string :user_id
      t.string :name
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
