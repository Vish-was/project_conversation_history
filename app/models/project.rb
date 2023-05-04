class Project < ApplicationRecord
  has_many :comments, dependent: :destroy

  STATUS_OPTIONS = ['Not Started', 'In Progress', 'Completed']

  validates :title, presence: true
  validates :description, presence: true
  validates :status, inclusion: { in: STATUS_OPTIONS }
end
