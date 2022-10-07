class CreateEstagios < ActiveRecord::Migration[7.0]
  def change
    create_table :estagios do |t|
      t.string :titulo
      t.text :descricao
      t.string :localidade

      t.timestamps
    end
  end
end
