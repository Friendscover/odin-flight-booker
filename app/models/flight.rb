class Flight < ApplicationRecord
  belongs_to :start_airport, class_name: "Airport"
  belongs_to :finish_airport, class_name: "Airport"

  def start_time_formatted
    start.strftime("%d/%m/%Y")
  end
end