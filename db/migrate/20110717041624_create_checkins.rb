class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :name
      t.string :email
      t.string :status
      t.timestamp :checked_out_at

      t.timestamps
    end
  end
end
