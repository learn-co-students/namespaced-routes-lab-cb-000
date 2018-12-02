class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def self.in_order(setting)
    case setting
    when 'ASC'
      all.order(:title)
    when 'DESC'
      all.order(title: :desc)
    else
      all
    end
  end
end
