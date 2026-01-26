def time_string(s)
  hours   = s/3600
  minutes = (s%3600)/60
  secs    = s%60

  h = "%02d" % hours
  m = "%02d" % minutes
  s = "%02d" % secs

  "#{h}:#{m}:#{s}"
end
