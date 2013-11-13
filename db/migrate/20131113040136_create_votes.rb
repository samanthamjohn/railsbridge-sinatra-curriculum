class CreateVotes < ActiveRecord::Migration
  def up
    create_table :votes do |t|
      t.integer :topic_id
      t.timestamps
    end
  end

  Vote.create(topic_id: 1)

  def down
    drop_table :votes
  end
end
