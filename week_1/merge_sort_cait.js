input_array = [1, 6, 9, 4, 3, 5, 8]
input_array2 = [1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239, 1, 6, 9, 4, 3, 5, 8, 1, 6, 9, 4, 3, 5, 8, 11, 23, 53, 132, 13, 13, 32, 50, 901, 239]
input_array3 = []
input_array4 = [1]


function splitSort(array) {
  var length = array.length
  var midpoint = Math.floor(length / 2)
  if (length < 2) {
    return array
  } else {
    // split and recurse, then merge
    var left = splitSort(array.slice(0, midpoint))
    var right = splitSort(array.slice(midpoint, length))
    return merge(left, right)
  }
}

function merge(left, right) {
  left = left || []
  right = right || []
  var total_length = left.length + right.length
  var merged = []
  var i = 0, j = 0
  while (merged.length < total_length) {
    if (left[i] && right[j]) {
      switch(left[i] < right[j]) {
        case true:
          merged.push(left[i])
          i++
          break;
        case false:
          merged.push(right[j])
          j++
          break;
      }
    } else if (left[i]) {
      merged.push(left[i])
      i++
    } else if (right[j]) {
      merged.push(right[j])
      j++
    }
  }
  return merged
}

console.log(splitSort(input_array))
console.log(splitSort(input_array2))
console.log(splitSort(input_array3))
console.log(splitSort(input_array4))



