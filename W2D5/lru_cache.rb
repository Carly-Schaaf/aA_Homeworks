class LRUCache

  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    end
    if count == @size
      @cache.shift
    end
    @cache << el
  end

  def show
    p @cache
  end

  private

  def include?(el)
    @cache.include?(el)
  end
end
