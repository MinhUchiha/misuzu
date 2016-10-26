class AddIndexToSetsubi < ActiveRecord::Migration
  def change
  	add_index :設備マスタ, :設備コード, unique: true
  end
end
