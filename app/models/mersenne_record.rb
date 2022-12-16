# frozen_string_literal: true

# mersenne
class MersenneRecord
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :num, :mode

  validates :num, presence: { message: 'can\'t be blank' }
  validates :mode, presence: { message: 'needs to be chosen' }
  validates :num, numericality: { only_integer: true, greater_than: 0 }
end
