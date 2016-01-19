var swap = function(array, index1, index2){
	var val1 = array[index1];
	var val2 = array[index2];
	array[index1] = val2;
	array[index2] = val1;

	return array;
}

var inputArray = [3, 1, 4, 5, 7, 2, 8, 6]

var quicksort = function(masterArray, left, right){
	right = right || (masterArray.length -1);
	left = left || 0;

	subArrayLength = (right - left +1);

	middleIndex = left + (Math.floor(subArrayLength/2));

	// subArrayLength < 2 ? return : null;
	if (subArrayLength < 2){
		return;
	}

	pivot = masterArray[middleIndex];

	swap(masterArray, left, middleIndex);

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

	quicksort(masterArray, left, (partitionPoint-2));
	quicksort(masterArray, partitionPoint, right);

	return masterArray;
}

console.log(quicksort(inputArray))