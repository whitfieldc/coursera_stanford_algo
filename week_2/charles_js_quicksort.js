var swap = function(array, index1, index2){
	var val1 = array[index1];
	var val2 = array[index2];
	array[index1] = val2;
	array[index2] = val1;

	return array;
}

var inputArray = [3, 1, 4, 5, 7, 2, 8, 6];
var inputArray2 = [9, 8, 7, 6, 5, 4, 3, 2, 1];
var inputArray3 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 10, 12, 11];
var inputArray4 = [9, 9, 8, 3];

var quicksort = function(masterArray, left, right){
	if(right === undefined){
		right = (masterArray.length -1);
	}

	left = left || 0;

	subArrayLength = (right - left +1);
	// console.log("subarray length: " +subArrayLength)
	// console.log(masterArray)

	middleIndex = left + (Math.floor(subArrayLength/2));
	// console.log("middle index: " +middleIndex)

	if (subArrayLength < 2){
		return;
	}

	pivot = masterArray[middleIndex];

	swap(masterArray, left, middleIndex);
	// console.log(masterArray)

	partitionPoint = (left+1);
	current = partitionPoint;

	for (var i = partitionPoint; i <= right; i++){
		var number = masterArray[i];
		if (number < pivot){
			swap(masterArray, partitionPoint, current);
			partitionPoint ++;
		}
		current++;
	}

	swap(masterArray, left, (partitionPoint-1));

	// console.log(left)
	// console.log((partitionPoint-2))
	// console.log((masterArray))

	quicksort(masterArray, left, (partitionPoint-2));
	quicksort(masterArray, partitionPoint, right);

	return masterArray;
}

console.log(quicksort(inputArray) === inputArray.sort())
console.log(quicksort(inputArray2) === inputArray2.sort())
console.log(quicksort(inputArray3) === inputArray3.sort())
console.log(quicksort(inputArray4) === inputArray4.sort())