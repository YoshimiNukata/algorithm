require 'benchmark'
Benchmark.bm 10 do |r|
  r.report "Nantoka" do

    def selection_sort(array)
      len = array.length

      (0...len).each do |i| 
        min = array[i]
        min_key = i 

        ((i+1)...len).each do |j| 
          if min > array[j]
            min = array[j]
            min_key = j 
          end 
        end 
        temp = array[i]
        array[i] = min 
        array[min_key] = temp
      end 

      return array
    end

    ary = [*1..100].shuffle
    p ary  

    p selection_sort(ary) 
  end
end