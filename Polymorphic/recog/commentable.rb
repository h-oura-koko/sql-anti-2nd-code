class Comment < ApplicationRecord
  self.primary_key = 'comment_id'
  belongs_to :issue, polymorphic: true
end

class Bug < ApplicationRecord
  self.primary_key = 'issue_id'
  has_many :comments, as: :issue
end

class FeatureRequest < ApplicationRecord
  self.table_name = 'featurerequests'
  self.primary_key = 'issue_id'
  has_many :comments, as: :issue
end