require 'benchmark'
Benchmark.bm 10 do |r|
  r.report "Nantoka" do
    array = [ *1..10000 ]

    def binary_search(array, target)

      head = 0
      tail = array.count - 1

      while head <= tail

        center = (head + tail) / 2

        if array[center] == target
          return "index = #{center}"
        elsif array[center] < target
          head = center + 1
        else
          tail = center - 1
        end

      end

      return "index is nothing"

    end

    target = 6

    p binary_search(array, target)
  end
end