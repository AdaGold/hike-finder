class HikeHasATrailhead < ActiveRecord::Migration[5.2]
  def change
    add_reference :hikes, :trailhead, foreign_key: true, index: true
  end
end
