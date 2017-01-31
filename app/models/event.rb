class Event < ApplicationRecord
  has_many :invites, foreign_key: :attended_event_id
  has_many :attendees, through: :invites
end
