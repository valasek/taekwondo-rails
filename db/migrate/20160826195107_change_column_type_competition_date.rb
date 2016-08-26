class ChangeColumnTypeCompetitionDate < ActiveRecord::Migration[5.0]
  def change
    change_column(:competitions, :date, :string)
  end
end