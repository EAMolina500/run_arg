class ChangeOrganizationIdInRunners < ActiveRecord::Migration[6.1]
  def change
    change_column_null :runners, :organization_id, true
  end
end
