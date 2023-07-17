#include <iostream>
#include <string>

using namespace std;

// Prototypes

void welcome();
void displayServices();
void costEstimate();
void startRepair();
void checkOut();

// Function definitions

// welcome() displays a welcome message to 'The Artisan's Workshop'
void welcome()
{
	cout << "Welcome to The Artisan's Workshop! We are your one stop shop for all of your crafting and repair needs." << endl;
}

// displayServices() displays all of the services offered by 'The Artisan's Workshop'
void displayServices()
{
	cout << "We offer a range of services, including:" << endl;
    cout << "- Woodworking" << endl;
    cout << "- Metalworking" << endl;
    cout << "- Jewelry Making" << endl;
    cout << "- Watch Repair" << endl;
    cout << "- Antique Restoration" << endl;
    cout << "- Furniture Refinishing" << endl;
}

// costEstimate() allows the user to get an estimate for their repair
void costEstimate()
{
	string item;
	int hours;
	double cost;

	cout << "What item are you having repaired? ";
	cin >> item;
	cout << "How many hours of work do you estimate? ";
	cin >> hours;

	cost = hours * 50;

	cout << "The estimated cost for repairing your " << item << " is $" << cost << endl;
}

// startRepair() starts the repair process
void startRepair()
{
	cout << "We will begin your repair now. It should be ready within 2-3 days." << endl;
}

// checkOut() allows the user to check out
void checkOut()
{
	double cost;
	double payment;
	double change;

	cout << "What is the total cost? ";
	cin >> cost;
	cout << "How much are you paying? ";
	cin >> payment;

	change = payment - cost;

	cout << "Your change is $" << change << endl;
	cout << "Thank you for choosing The Artisan's Workshop!" << endl;
}

// Main function

int main()
{
	welcome();
	displayServices();
	costEstimate();
	startRepair();
	checkOut();

	return 0;
}