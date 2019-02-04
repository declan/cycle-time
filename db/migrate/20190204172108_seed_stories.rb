class Story < ActiveRecord::Base
end

class SeedStories < ActiveRecord::Migration[5.2]

  def self.up
    Story.create(
      name: 'Upswing Logo',
      url:  'https://agile.enova.com/browse/AND-308',
      points: 1,
      dev: 2.08,
      review: 1.75,
      qa: 0.95,
      accepted: 0.23,
      started_at: '2019-01-10',
      completed_at: '2019-01-17'
    )
  end

  def self.down
    Story.all.each { |s| s.destroy }
  end

end
