class Report
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :user
  
  field :id
  
  field :name, type: String
  field :name_of_site, type: String
  field :address_of_site, type: String
  field :summary_results, type: String
  field :cost, type: Integer

  validates :id, presence: true
  validates :name, presence: true

end