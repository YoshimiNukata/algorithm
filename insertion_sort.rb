require 'benchmark'
Benchmark.bm 10 do |r|
  r.report "Nantoka" do
    def insertion_sort(num)
        n = num.length
        1.upto(n-1) do |j|
          temp = num[j]
          i = j
          while i > 0 && num[i - 1] > temp
            num[i] = num[i-1]
            i -= 1
          end
          if num[i] != temp
            num[i] = temp
            p num
          end
        end
      end

      num = [*1..1000].shuffle
      # p num
      p insertion_sort(num)
    end
  end