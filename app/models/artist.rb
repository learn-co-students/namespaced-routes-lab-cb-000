class Artist < ActiveRecord::Base
  has_many :songs

  def self.in_order(setting)
    case setting
    when 'ASC'
      all.order(:name)
    when 'DESC'
      all.order(name: :desc)
    else
      all
    end
  end


end
