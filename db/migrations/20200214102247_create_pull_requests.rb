Hanami::Model.migration do
  change do
    create_table :pull_requests do
      primary_key :id

      column :title, String, null: false
      column :remote_id, Integer, null: false
      column :remote_created_at, DateTime, null: false
      column :remote_closed_at, DateTime
      column :remote_merged_at, DateTime
      column :status, String, null: false
      column :author, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
