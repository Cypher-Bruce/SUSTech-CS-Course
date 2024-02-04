// usett1.cpp -- using base class and derived class
#include <iostream>
#include "tblt1.h"
int main ( void )
{
    using std::cout;
    using std::endl;

    TableTennisPlayer player1("Tara", "Boomdea", false);
    RatedPlayer rplayer1(1140, "Mallory", "Duck", true);

    rplayer1.Name(); // derived object uses base method
    if (rplayer1.HasTable())
        cout << ": has a table.\n";
    else
        cout << ": hasn't a table.\n";
        
    player1.Name(); // base object uses base method
    if (player1.HasTable())
        cout << ": has a table";
    else
        cout << ": hasn't a table.\n";
        
    cout << "Name: ";
    rplayer1.Name();
    cout << "; Rating: " << rplayer1.Rating() << endl;
    
    // initialize RatedPlayer using TableTennisPlayer object
    RatedPlayer rplayer2(1212, player1);

    cout << "Name: ";
    rplayer2.Name();
    cout << "; Rating: " << rplayer2.Rating() << endl;
    
    TableTennisPlayer & rt = rplayer1;	
	TableTennisPlayer * pt = &rplayer1;
	
	cout << endl << "Again, the Name: ";
	rt.Name(); // invoke Name () with reference
	
	cout << endl<< "Again and again, the Name: ";
    pt->Name();// invoke Name () with pointer
    
    return 0;
}
