class Report
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :user
  
  field :id
  
  field :name
  field :name_of_site
  field :address
  field :report_outcome
  field :cost, type: Integer

  
  validates :id, presence: true
  validates :name, presence: true

end