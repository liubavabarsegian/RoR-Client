# frozen_string_literal: true

# mersenne
class MersenneRecord
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :num, :mode

  validates :num, presence: { message: 'can\'t be blank' },
                    comparison: { greater_than: 0 }
  validates :mode, presence: { message: 'needs to be chosen' }
  end