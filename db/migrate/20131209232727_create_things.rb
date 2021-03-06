class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :admin_url
      t.string :public_url
      t.datetime :time
      t.string :admin_name
      t.string :admin_email
      t.string :square_cash_email
      t.string :venmo_id
      t.string :title
      t.string :description
      t.float :min_contribution
      t.integer :total_contributors, default: 0
      t.float :total_contributions, default: 0
      t.timestamps
    end
  end
end
