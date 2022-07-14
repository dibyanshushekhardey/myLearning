#include <iostream>
using namespace std;
struct marks {
    int num;
    void
    Set(int temp) // Member function inside Structure to
                  // take input and store it in "num"
    {
        num = temp;
    }
    void display() //  function used to display the values
    {
        cout << "num=" << num;
    }
};
// Driver Program
int main()
{
    marks m1;
    m1.Set(9); // calling function inside Struct to
               // initialize value to num
    m1.display(); // calling function inside struct to
                  // display value of Num
}