class Registro < ActiveRecord::Base

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      registro_hash = row.to_hash # exclude the price field
      Registro.create!(registro_hash)
    end # end CSV.foreach
  end # end self.import(file)

  filterrific(
    available_filters: [
      :channel,
      :media,
      :location,
      :user
    ]
  )

  scope :media, -> (media) {where media: media}
  scope :channel, -> (channel) {where channel: channel}
  scope :location, -> (location) {where location: location}
  scope :user, -> (user) {where user: user}
     
end
