class AddReportCount < ActiveRecord::Migration
  def change
  	    add_column :userdetails, :report_count, :integer, default: 0

  end
end
