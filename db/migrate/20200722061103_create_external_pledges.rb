class CreateExternalPledges < ActiveRecord::Migration[6.0]
  def change
    create_table :external_pledges do |t|
      t.string :source
      t.integer :amount
      t.boolean :active
      t.references :can_pledge, polymorphic: true

      t.timestamps
    end
  end
end
