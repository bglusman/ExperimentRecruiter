class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.string :location
      t.datetime :time

      t.timestamps
    end
  end
end
