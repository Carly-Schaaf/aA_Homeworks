require 'byebug'
def sluggish_octopus(fish)
  longest = 0
  fish[0...-1].each_with_index do |fish1, idx|
    fish[idx+1..-1].each do |fish2|
      if fish.length > fish2.length
        longest = fish1
      else
        longest = fish2
      end
    end
  end
  longest
end

def clever_octopus(fish)
  fish.reduce do |longest, fish|
    if fish.length > longest.length
      fish
    else
      longest
    end
  end

end

def dominant_octopus(fish)
  result = merge_sort(fish)
  result[0]
end

def merge_sort(fish)
  return fish if fish.length <= 1
  mid = fish.length/2
  left = fish[0...mid]
  right = fish[mid..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge(arr1, arr2)
  result = []
  until arr1.empty? || arr2.empty?
    if arr1.length[0] < arr2.length[0]
      el = arr1.shift
      result << el
    else
      el = arr2.shift
      result << el
    end
  end
  result + arr1 + arr2
end


puts dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# => "fiiiissshhhhhh"
