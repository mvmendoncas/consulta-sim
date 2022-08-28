class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consultum do |t|
      t.date :data
      t.time :horario

      t.timestamps
    end
  end
end
