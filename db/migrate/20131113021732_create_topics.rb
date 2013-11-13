class CreateTopics < ActiveRecord::Migration
  def up
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.timestamps
    end

    Topic.create(title: "foo", description: "bar")
    Topic.create(title: "mindy project", description: "i like")
    Topic.create(title: "gay guy", description: "is that guy gay?")

  end

  def down
    drop_table :topics
  end
end
