class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :user_move
      t.string :computer_move
      t.integer :computer_win
      t.integer :user_win
      t.integer :ties

      t.timestamps null: false
    end
  end
end
