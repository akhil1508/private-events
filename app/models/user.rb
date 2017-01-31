class User < ApplicationRecord
  has_many :events, :foreign_key => :creator_id
  has_many :invites , foreign_key: :attendee_id
  has_many :attended_events, through: :invites

  def prev_events
    previous = []
    events.each do |i|
      if Time.now > i.time
        previous << i
      end
    end
    previous
  end

  def upcoming_events
    upcoming = []
    events.each do |i|
      if Time.now < i.time
        upcoming << i
      end
    end
    upcoming
  end
end
