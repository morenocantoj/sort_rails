module TimeDiff
  def miliseconds(finish, start)
    ((finish - start) * 1000).round(2)
  end
end
