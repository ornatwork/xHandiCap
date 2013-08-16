//
//  HandiCapViewController.m
//  HandiCap
//
//  Created by . . on 7/2/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "HandiCapViewController.h"
#include <tgmath.h>

@implementation HandiCapViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	// Disable the two result fields
	txWinPlayer1.userInteractionEnabled = FALSE;
	txWinPlayer2.userInteractionEnabled = FALSE;
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


// Shut down the keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	NSLog( @"textFieldShouldReturn start");
	
	// This code should be made dynamic instead of ugly if / else
	if( textField == txPlayer1 )
	{
		[txPlayer1 resignFirstResponder];
	}
	else if( textField == txPlayer2 )
	{
		[txPlayer2 resignFirstResponder];
	}

	return TRUE;
}

		
// Calculates handicap
-(void) calculate:( double *) pdaPlayers;
{
	// STRONGER is lower handicap
	// See who is better rated coming in,
	Boolean bStrongerFirst =  pdaPlayers[0] < pdaPlayers[1];
	// Holds results
	double strong_race, weak_race;
	
	if( bStrongerFirst )
	{
		// What’s the race
		weak_race = MAX(2, 6 - floor( pdaPlayers[1] ));
		strong_race = weak_race + round( pdaPlayers[1] - pdaPlayers[0] );
		// set the slots before returning
		pdaPlayers[0] = strong_race;
		pdaPlayers[1] = weak_race;
	}
	else
	{
		// What’s the race
		weak_race = MAX(2, 6 - floor( pdaPlayers[0] ));
		strong_race = weak_race + round( pdaPlayers[0] - pdaPlayers[1] );
		//  Set the slots before returning
		pdaPlayers[0] = weak_race;
		pdaPlayers[1] = strong_race;
	}
}


- (IBAction) btCalculate_Clicked:(id)sender
{
	NSLog( @"Button clicked start");
	
	double dPlayerOne = [txPlayer1.text doubleValue];
	double dPlayerTwo = [txPlayer2.text doubleValue];

	// What is the race
	double players[2] = { dPlayerOne, dPlayerTwo };

	// call the function to calculate
	[ self calculate: players ];


	// Display it 
	txWinPlayer1.text = [NSString stringWithFormat:@"%.0f", players[0]];
	txWinPlayer2.text = [NSString stringWithFormat:@"%.0f", players[1]];

	NSLog( @"Button clicked end");
}





- (void)dealloc 
{
	// First half
	[lbPlayer1 release];
	[txPlayer1 release];
	[lbPlayer2 release];
	[txPlayer2 release];
	
	// Second half
	[lbWinPlayer1 release];
	[txWinPlayer1 release];
	[lbWinPlayer2 release];
	[txWinPlayer2 release]; 
    
	[super dealloc];
}

@end
