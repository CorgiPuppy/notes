#include <iostream>

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
	
}

int main() {
	setlocale(LC_ALL, "ru_RU.UTF-8");

	workWithConditions();

    return 0;
}
