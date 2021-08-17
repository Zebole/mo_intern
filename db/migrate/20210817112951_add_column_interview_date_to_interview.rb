class AddColumnInterviewDateToInterview < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :interview_date, :date
  end
end
