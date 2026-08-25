[ "SFO", "LAX", "JFK", "ORD", "NRT", "HND", "KIX", "NGO", "FUK" ].each do |code|
  Airport.find_or_create_by!(code: code)
end

flights = [
  [ "SFO", "NRT", "2026-09-01 09:00", 660 ],
  [ "SFO", "HND", "2026-09-02 11:30", 645 ],
  [ "LAX", "NRT", "2026-09-03 10:00", 675 ],
  [ "LAX", "HND", "2026-09-04 13:00", 690 ],
  [ "JFK", "NRT", "2026-09-05 09:30", 840 ],
  [ "ORD", "NRT", "2026-09-06 12:00", 780 ],

  [ "NRT", "SFO", "2026-09-07 16:00", 600 ],
  [ "HND", "LAX", "2026-09-08 18:30", 660 ],
  [ "KIX", "SFO", "2026-09-09 15:00", 630 ],
  [ "NRT", "JFK", "2026-09-10 17:00", 810 ],

  [ "HND", "KIX", "2026-09-11 09:00", 80 ],
  [ "KIX", "FUK", "2026-09-11 13:00", 70 ],
  [ "NRT", "NGO", "2026-09-12 10:30", 85 ],
  [ "HND", "FUK", "2026-09-12 14:00", 110 ]
]

flights.each do |departure, arrival, start_datetime, duration|
  Flight.create!(
    departure_airport: Airport.find_by!(code: departure),
    arrival_airport: Airport.find_by!(code: arrival),
    start_datetime: start_datetime,
    duration: duration
  )
end
