def find(target, dataset)
  dataset.each do |x|
    if x == target
      return true
    end
  end
  false
end
