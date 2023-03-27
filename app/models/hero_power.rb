class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power
  
    STRENGTHS = ['Strong', 'Weak', 'Average']
    validates :strength, inclusion: { in: STRENGTHS }
  end
  