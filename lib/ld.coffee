class LevenSheteinDistance
  constructor:(@source)->
  getLimit:(len)-> if len <= 3 then 1 else len / 2

  find:(target,callback)->
    for x in @source
      if @search(x,target) <= @getLimit x.length
        callback x

  search:(s,t)->
    n = s.length
    m = t.length
  	return m if n is 0
  	return n if m is 0
  	
    matrix       = []
  	matrix[i]    = [] for i in [0..n]
  	matrix[i][0] = i  for i in [0..n]
  	matrix[0][j] = j  for j in [0..m]

    for source, i in s
      for target, j in t
        cost = if source is target then 0 else 1
        matrix[i+1][j+1] = Math.min Math.min matrix[i][j+1]+1, matrix[i+1][j]+1, matrix[i][j] + cost
    return matrix[n][m]
module.exports = LevenSheteinDistance