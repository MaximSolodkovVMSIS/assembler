#include <iostream>

extern "C" void _cdecl func(float* arr, float* res);

#define ARR_SIZE 10

void print_arr(float* arr) {
	for (int i = 0; i < ARR_SIZE; i++) {
		std::cout << arr[i] << " ";
	}
}

int main(void) {
	float arr[ARR_SIZE];
	float res[ARR_SIZE];

	for (int i = 0; i < ARR_SIZE; i++) {
		std::cout << "Enter " << i + 1 << " element:";
		std::cin >> arr[i];
	}

	func(arr, res);

	print_arr(arr);
	std::cout << std::endl;
	print_arr(res);
}