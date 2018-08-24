class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |subarray|
      if subarray[0] == key
        subarray[1] = value
      end
    end
    @map << [key, value]
  end

  def get(key)
    @map.each do |subarray|
      if subarray[0] == key
        return subarray[1]
      end
    end
  end

  def delete(key)
    deleted_value = nil
    @map.each do |subarray|
      if subarray[0] == key
        deleted_value = @map.delete(subarray)
      end
    end
    deleted_value
  end

  def show
    p @map
  end

end
