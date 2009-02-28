# == Schema Information
# Schema version: 16
#
# Table name: comments
#
#  id               :integer(4)      not null, primary key
#  user_id          :integer(4)
#  commentable_id   :integer(4)
#  commentable_type :string(255)
#  private          :boolean(1)
#  title            :string(255)     default("")
#  comment          :text
#  created_at       :datetime
#  updated_at       :datetime
#

class Comment < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :commentable, :polymorphic => true

  validates_presence_of :user_id, :commentable_id, :commentable_type, :comment
end