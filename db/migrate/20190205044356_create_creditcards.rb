class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.string :cc_number
      t.string :cc_expiry
      t.string :cc_cvv2
      t.string :full_name
      t.timestamps
    end
  end
end
