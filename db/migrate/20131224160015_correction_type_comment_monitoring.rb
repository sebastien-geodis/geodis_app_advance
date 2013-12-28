class CorrectionTypeCommentMonitoring < ActiveRecord::Migration
  def change
    change_column :monitorings, :comment, :text
  end
end
