class CreateCiphers < ActiveRecord::Migration
  def change
    create_table :ciphers do |t|
      t.string :ciphername
      t.integer :ciphernumber

      t.timestamps
    end
  end
end
