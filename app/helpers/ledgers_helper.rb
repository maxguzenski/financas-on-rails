module LedgersHelper

  def sum_ledgers_for(tag)
    tag.taggings.to_a.sum {|a| a.taggable.value }
  end

end
