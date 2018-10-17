require 'benchmark'
Benchmark.bm 10 do |r|
  r.report "Nantoka" do

      a = (0..1000).to_a
      a = a.sample(a.length)
      p a

      def q_sort(a, left, right)
        return a if left >= right
        
        pivot = a[((left + right).to_f/2.to_f).ceil]
        i = left
        j = right

        while true
          i += 1 while a[i] < pivot
          j -= 1 while a[j] > pivot
          
          break if (i >= j)
          a[i], a[j] = a[j], a[i]
          i += 1
          j -= 1
        end
        q_sort(a, left, i-1)
        q_sort(a, i, right)
        a
      end

      q_sort(a,0,a.size - 1)

      p a
  end
end