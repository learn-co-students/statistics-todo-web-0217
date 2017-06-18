require 'pry'

class Array
  def mean
    total = self.inject {|sum, n| sum + n}
    (total.to_f / self.length).round(2)
  end

  def median
    array = self.sort
    array[self.length / 2]
  end

  def mode
    tabulator = {}
    self.each do |a|
      if !tabulator[a]
        tabulator[a] = 1
      else
        tabulator[a] += 1
      end
    end

    sorted = tabulator.sort {|a, b| a[1]<=>b[1]}
    sorted[-1][0]
  end
end
