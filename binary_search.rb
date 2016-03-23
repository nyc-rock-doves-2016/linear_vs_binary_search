def find(target, dataset)
  ## Base case: We find the target in the dataset
  midpoint = dataset.length / 2
  comparitor = dataset[midpoint]
  return false if comparitor.nil?

  if target == comparitor
    true
  elsif target > comparitor
    ## We are too big - take the right side of the array
    find(target, dataset[midpoint + 1 ... dataset.length])
  elsif target < comparitor
    ## We are too small - take the left side of the array
    find(target, dataset[0 ... midpoint])
  end
end
