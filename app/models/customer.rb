class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates_each :first_name, :last_name do |record, attribute, value|
    record.errors.add(attribute, 'You must to start with upper case') if value.blank?
  end
  
  validates :state, presence: true, if: :paid_is_valid? 

  def paid_is_valid?
    state == 'card'
  end
end
