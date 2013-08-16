//
//  HandiCapViewController.h
//  HandiCap
//
//  Created by . . on 7/2/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HandiCapViewController : UIViewController <UITextFieldDelegate>
{
	
	// First half
	IBOutlet UILabel *lbPlayer1;
	IBOutlet UITextField *txPlayer1;	
	IBOutlet UILabel *lbPlayer2;
	IBOutlet UITextField *txPlayer2;
	
	// Second half
	IBOutlet UILabel *lbWinPlayer1;
	IBOutlet UITextField *txWinPlayer1;
	IBOutlet UILabel *lbWinPlayer2;
	IBOutlet UITextField *txWinPlayer2;
}

- (IBAction) btCalculate_Clicked:(id)sender;

@end

