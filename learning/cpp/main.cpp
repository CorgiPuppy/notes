#include <iostream>
#include <time.h>
#include <string>

void introduction() {
	/*
		comments
		I'm coding right now.
	*/
	setlocale(LC_ALL, "ru_RU.UTF-8");

    std::cout << "Hello, World!" << std::endl;
	std::cout << "Привет, \n";
	std::cout << "мир";
}

void workWithVariables() {
	int age = 100;
	age = 15;
	std::cout << "Возраст: " << age << " лет." << std::endl;

	int a, b;
	std::cout << "Enter the amount of rubles you have:\n";
	std::cout << "for a: ";
	std::cin >> a;
	std::cout << "for b: ";
	std::cin >> b;
	std::cout << "U have: " << a << " and " << b << " rubles." << std::endl;
}

void workWithTypeDatas() {
	short number1 = 4; // 2 byte / -32k to 32k
	int number2 = 40; // 4 bytes / -2B to 2B
	long number3 = 139; // 8 bytes

	unsigned short number4 = 4; // 2 byte / 0 to 64k
	unsigned int number5 = 32; // 4 bytes / 0 to 4B
	unsigned long number6 = 139; // 8 bytes / 0 to 

	float number7 = 23.434f; // like int
	double number8 = 1390240.4493f; // like long

	char symbol = '!';

	bool amI = true; // or false
}

void workWithConditions() {
	int password = 1234;
	std::cout << "Запускаю while" << std::endl;
	while (true) {
		int pincode;
		char command;
		std::cout << "To exit enter the 'e' and 'o' to write the pincode" << std::endl;
		std::cout << "Command: ";
		std::cin >> command;
		switch (command) {
			case 'o':
				std::cout << "Захожу в if, если не вышли" << std::endl;
				std::cout << "Enter the pincode: ";
				std::cin >> pincode;
				if (password == pincode) {
					std::cout << "Succeed!" << std::endl;
					return;
				} else {
					std::cout << "Unsucceed!" << std::endl;
					std::cout << "выхожу и пинкода" << std::endl;
				}			
				break;
			case 'e':
				return;
			default:
				std::cout << "введите нужную букву" << std::endl;
				break;
		}
		/*
		if (command == 'o') {
			std::cout << "Захожу в if, если не вышли" << std::endl;
			std::cout << "Enter the pincode: ";
			std::cin >> pincode;
			if (password == pincode) {
				std::cout << "Succeed!" << std::endl;
				return;
			} else {
				std::cout << "Unsucceed!" << std::endl;
				std::cout << "выхожу и пинкода" << std::endl;
			}
		} else if (command == 'e')
			return;
		else
			std::cout << "введите нужную букву" << std::endl;
		*/
	}
}

void doCalculator() {
	srand(time(NULL));
	int range[2] = {-20, 0};	
	int numberOne = range[0] + rand() % (range[1] - range[0] + 1);
	int numberTwo = range[0] + rand() % (range[1] - range[0] + 1);
	std::cout << "The first number: " << numberOne << ". and the second number: " << numberTwo << "." << std::endl;
	while (true) {
		char operation;
		std::cout << "You can write the operation you want to do or 'e' to exit: ";
		std::cin >> operation;
		switch (operation) {
			case '+':
				std::cout << numberOne << " " << operation << " " << numberTwo << '=' << numberOne + numberTwo << std::endl;
				break;
			case '-':
				std::cout << numberOne << " " << operation << " " << numberTwo << '=' << numberOne - numberTwo << std::endl;
				break;
			case '*':
				std::cout << numberOne << " " << operation << " " << numberTwo << '=' << numberOne * numberTwo << std::endl;
				break;
			case '/':
				std::cout << numberOne << " " << operation << " " << numberTwo << '=' << numberOne / numberTwo << std::endl;
				break;
			case '%':
				std::cout << numberOne << " " << operation << " " << numberTwo << '=' << numberOne % numberTwo << std::endl;
				break;
			case 'e':
				std::cout << "The end of the program.." << std::endl;
				return;
			default:
				std::cout << "Enter the right symbol!" << std::endl;
				break;
				}
				}
}

void suggestNumber() {
	int range[2] = {-5, 5};
	int realNumber = range[0] + rand() % (range[1] - range[0] + 1);
	while (true) {
		int suggestedNumber;
		std::cout << "Suggest the number: ";
		std::cin >> suggestedNumber;
		if (suggestedNumber == realNumber) {
			std::cout << "Huuuuray!! The right number is " << realNumber << std::endl;	
			break;
		}
		else {
			std::cout << "Try again!" << std::endl;	
			continue;
		}
	}
}

void workWithArrays() {
	short evenNumbers[3];
	evenNumbers[0] = 0;
	evenNumbers[1] = 2;
	evenNumbers[2] = 4;

	int lenOfOddNumbers = 4;
	float oddNumbers[lenOfOddNumbers] = {1.4f, 2.f, 5.13f};

	for (int i = 0; i < lenOfOddNumbers; i++)
		std::cout << "oddNumbers[" << i << "] = " << oddNumbers[i] << std::endl;
	
	int lengthOfArray;
	std::cout << "Enter the length of an array: ";
	std::cin >> lengthOfArray;
	int numbers[lengthOfArray];
	int number;
	for (int i = 0; i < lengthOfArray; i++) {
		std::cout << "Enter the number of the array: ";
		std::cin >> number;
		numbers[i] = number;
	}
	int sumOfElements = 0;
	for (int i = 0; i < lengthOfArray; i++) {
		sumOfElements += numbers[i];
	}
	int minimumOfElements = numbers[0];
	for (int i = 0; i < lengthOfArray; i++)
		if (numbers[i] < minimumOfElements)
			minimumOfElements = numbers[i];
	for (int i = 0; i < lengthOfArray; i++)
		std::cout << "numbers[" << i << "] = " << numbers[i] << std::endl;
	std::cout << "Сумма элементов массива = " << sumOfElements << std::endl;
	std::cout << "Минимальный элемент массива = " << minimumOfElements << std::endl;

	int matrix[3][2] = {
		{2, -3},
		{-2, 5},
		{2, -4}
	};
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 2; j++)
			std::cout << matrix[i][j] << " ";
		std::cout << std::endl;
	}
}

void workWithDynamicArrays() {
	int *nums = new int[3];
	nums[0] = 45;
	nums[1] = 23;
	for (int i = 0; i < 3; i++)
		std::cout << nums[i] << std::endl;
	delete[] nums;

	for (int i = 0; i < 3; i++)
		std::cout << nums[i] << std::endl;
}

void workWithStrings() {
	char word[] = {'H', 'e', 'l', 'l', 'o'};
	for (int i = 0; i < 5; i++) {
		std::cout << word[i];
	}
	std::cout << '\n';

	std::string words = "Hello, my World!";
	std::cout << words << std::endl;
	words[6] = '-';
	std::cout << words << std::endl;

	std::cin >> words;
	std::cout << words << std::endl;
}

int doSum(int a, int b) {
	return a + b;
}

void workWithFunctions() {
	std::cout << "Sum of two numbers: " << doSum(5, 20) << std::endl;
}

int main() {
	setlocale(LC_ALL, "ru_RU.UTF-8");
	srand(time(NULL));

	workWithFunctions();

    return 0;
}
