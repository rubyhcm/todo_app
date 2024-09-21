# frozen_string_literal: true

class AddTwoColumToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :upvotes, :integer
    add_column :tasks, :downvotes, :integer
    add_column :tasks, :is_blog_worthy, :boolean
  end
end
