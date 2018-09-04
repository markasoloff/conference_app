class ChangeAgeInSpeaker < ActiveRecord::Migration[5.2]
  def change
    change_column :speakers, :age, 'integer USING CAST(age AS integer)'
  end
end
