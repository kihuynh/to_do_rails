class List < ActiveRecord::Base
  has_many :tasks

  scope :most_tasks, -> {(
    select("lists.name, count(tasks.id) as tasks_counter")
    .join(:tasks)
    .group("lists.id")
    .order("tasks_count DESC")
    .limit(10)
    )}
    
  validates :name, :presence => true
end
