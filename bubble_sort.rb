
require 'benchmark'
Benchmark.bm 10 do |r|
  r.report "Nantoka" do

    def bubble_sort(num)
      l =  num.length
      for i in 1..l do
        for j in 1..(l-i) do
          if num[j - 1] > num[j]
            tmp =  num[j]
            num[j] = num[j - 1]
            num[j - 1] = tmp
          end 
        end
      end
      return num
    end

    num = [*1..100].shuffle
    # p num
    # p bubble_sort(num)
    p bubble_sort(num)
  end
end