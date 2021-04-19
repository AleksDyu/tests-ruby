def time_string(total_seconds)
  total_seconds = total_seconds
  hours = (total_seconds / (60*60)).to_s
  minutes = ((total_seconds / 60) % 60).to_s
  seconds = (total_seconds % 60).to_s

  if hours.length == 1
    hours = "0#{hours}"
  end
  if minutes.length == 1
    minutes = "0#{minutes}"
  end
  if seconds.length == 1
    seconds = "0#{seconds}"
  end
  return "#{hours}:#{minutes}:#{seconds}"
end
