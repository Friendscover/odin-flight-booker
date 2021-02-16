class Flight < ApplicationRecord
  belongs_to :start_airport, class_name: "Airport"
  belongs_to :finish_airport, class_name: "Airport"
end