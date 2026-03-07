// Task 1 number analysis system
// Name : Habtewold Mazengia   Id: ATE/5127/15

// function that will help us to get maximum number
int findMax (List<int> numbers) {
  int max = numbers[0];
  for (int countNumber in numbers) {
    if (countNumber > max) {
      max = countNumber;
    }
  }
  return max;
}
// the function used to get minimum number
int findMin (List<int> numbers) {
  int min = numbers[0];
  for (int countNumber in numbers ) {
    if ( countNumber < min) {
      min = countNumber;
    }
  }
  return min;
}
// function that is used to add these numbers
int calculateSum (List<int> numbers) {
  int sum = 0;
  for (int countNumber in numbers) {
    sum += countNumber;
  }
  return sum;
}
// function used to calculate average
double calculateAverage (List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}

void main () {
  // final list of numbers
  int max = findMax(numbers);
  //calling functions
  int min = findMin(numbers);
  int sum = calculateSum(numbers);
  double avg = calculateAverage(numbers);
  // printing out the results
  print("Number Analysis Results");
  print("========================");
  print("Numbers:  $numbers ");
  print("Maximum value : $max");
  print("Minimum value : $min");
  print("Sum           : $sum");
  print("Average       : $avg");
}
