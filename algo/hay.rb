haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

# p haystack[:hay][3[0[1[1[1[2]]]]]]

p haystack[:hay][3][:hay][:hay][1][:hay][2]

