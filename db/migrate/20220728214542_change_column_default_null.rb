class ChangeColumnDefaultNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :order_items, :order_id, true
  end
end
