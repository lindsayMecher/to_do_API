class ToDoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :importance

  belongs_to :user
end
