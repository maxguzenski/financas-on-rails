class Ledger < ActiveRecord::Base
  validates_presence_of :date, :value
  acts_as_taggable_on :tags
end
