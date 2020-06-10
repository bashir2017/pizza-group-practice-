class CreatePizzaPies < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_pies do |t|
      t.string :types
      t.string :toppings
      t.string :size

      t.timestamps
    end
  end
end
