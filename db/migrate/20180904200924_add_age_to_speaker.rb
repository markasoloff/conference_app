class AddAgeToSpeaker < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :age, :string
  end
end
