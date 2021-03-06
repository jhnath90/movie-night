class Movie < ActiveRecord::Base
  belongs_to :event
  has_many :votes, dependent: :destroy

  validates :event, presence: true
  validates :url, presence: true

  validates :title, presence: true,
                    uniqueness: {
                      scope: :event_id,
                      case_sensitive: false,
                      message: 'already suggested for that event'
                    }

  def vote(user)
    Vote.create(movie: self, event: event, user: user)
  end
end