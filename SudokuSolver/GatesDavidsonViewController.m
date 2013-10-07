//
//  GatesDavidsonViewController.m
//  SudokuSolver
//
//  Created by John Davidson on 10/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "GatesDavidsonViewController.h"

@implementation GatesDavidsonViewController
@synthesize out11;
@synthesize out12;
@synthesize out13;
@synthesize out14;
@synthesize out15;
@synthesize out16;
@synthesize out17;
@synthesize out18;
@synthesize out19;
@synthesize out21;
@synthesize out22;
@synthesize out23;
@synthesize out24;
@synthesize out25;
@synthesize out26;
@synthesize out27;
@synthesize out28;
@synthesize out29;
@synthesize out31;
@synthesize out32;
@synthesize out33;
@synthesize out34;
@synthesize out35;
@synthesize out36;
@synthesize out37;
@synthesize out38;
@synthesize out39;
@synthesize out41;
@synthesize out42;
@synthesize out43;
@synthesize out44;
@synthesize out45;
@synthesize out46;
@synthesize out47;
@synthesize out48;
@synthesize out49;
@synthesize out51;
@synthesize out52;
@synthesize out53;
@synthesize out54;
@synthesize out55;
@synthesize out56;
@synthesize out57;
@synthesize out58;
@synthesize out59;
@synthesize out61;
@synthesize out62;
@synthesize out63;
@synthesize out64;
@synthesize out65;
@synthesize out66;
@synthesize out67;
@synthesize out68;
@synthesize out69;
@synthesize out71;
@synthesize out72;
@synthesize out73;
@synthesize out74;
@synthesize out75;
@synthesize out76;
@synthesize out77;
@synthesize out78;
@synthesize out79;
@synthesize out81;
@synthesize out82;
@synthesize out83;
@synthesize out84;
@synthesize out85;
@synthesize out86;
@synthesize out87;
@synthesize out88;
@synthesize out89;
@synthesize out91;
@synthesize out92;
@synthesize out93;
@synthesize out94;
@synthesize out95;
@synthesize out96;
@synthesize out97;
@synthesize out98;
@synthesize out99;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    currentNumber = 0;
    editedCell = 11;
    moreToSolve = TRUE;
    autoSolve = TRUE;
    oneTimeSolve = FALSE;
    
    for (NSInteger i = 0; i<810; i++)
    {
        theGrid[i] = TRUE;
    }
}

- (void)viewDidUnload
{
    [self setOut11:nil];
    [self setOut12:nil];
    [self setOut13:nil];
    [self setOut14:nil];
    [self setOut15:nil];
    [self setOut16:nil];
    [self setOut17:nil];
    [self setOut18:nil];
    [self setOut19:nil];
    [self setOut21:nil];
    [self setOut22:nil];
    [self setOut23:nil];
    [self setOut24:nil];
    [self setOut25:nil];
    [self setOut26:nil];
    [self setOut27:nil];
    [self setOut28:nil];
    [self setOut29:nil];
    [self setOut31:nil];
    [self setOut32:nil];
    [self setOut33:nil];
    [self setOut34:nil];
    [self setOut35:nil];
    [self setOut36:nil];
    [self setOut37:nil];
    [self setOut38:nil];
    [self setOut39:nil];
    [self setOut41:nil];
    [self setOut42:nil];
    [self setOut43:nil];
    [self setOut44:nil];
    [self setOut45:nil];
    [self setOut46:nil];
    [self setOut47:nil];
    [self setOut48:nil];
    [self setOut49:nil];
    [self setOut51:nil];
    [self setOut52:nil];
    [self setOut53:nil];
    [self setOut54:nil];
    [self setOut55:nil];
    [self setOut56:nil];
    [self setOut57:nil];
    [self setOut58:nil];
    [self setOut59:nil];
    [self setOut61:nil];
    [self setOut62:nil];
    [self setOut63:nil];
    [self setOut64:nil];
    [self setOut65:nil];
    [self setOut66:nil];
    [self setOut67:nil];
    [self setOut68:nil];
    [self setOut69:nil];
    [self setOut71:nil];
    [self setOut72:nil];
    [self setOut73:nil];
    [self setOut74:nil];
    [self setOut75:nil];
    [self setOut76:nil];
    [self setOut77:nil];
    [self setOut78:nil];
    [self setOut79:nil];
    [self setOut81:nil];
    [self setOut82:nil];
    [self setOut83:nil];
    [self setOut84:nil];
    [self setOut85:nil];
    [self setOut86:nil];
    [self setOut87:nil];
    [self setOut88:nil];
    [self setOut89:nil];
    [self setOut91:nil];
    [self setOut92:nil];
    [self setOut93:nil];
    [self setOut94:nil];
    [self setOut95:nil];
    [self setOut96:nil];
    [self setOut97:nil];
    [self setOut98:nil];
    [self setOut99:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)enableCell:(NSInteger)cell: (BOOL) enable
{
    UIImage *backColor;
    if (enable)
    {
        backColor = [UIImage imageNamed:@"greenbutton.png"];
    } else
    {
        backColor = [UIImage imageNamed:@"redbutton.png"];
    }
    switch (cell) {
        case 11:
            [out11 setEnabled:enable];
            [out11 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 12:
            [out12 setEnabled:enable];
            [out12 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 13:
            [out13 setEnabled:enable];
            [out13 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 14:
            [out14 setEnabled:enable];
            [out14 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 15:
            [out15 setEnabled:enable];
            [out15 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 16:
            [out16 setEnabled:enable];
            [out16 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 17:
            [out17 setEnabled:enable];
            [out17 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 18:
            [out18 setEnabled:enable];
            [out18 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 19:
            [out19 setEnabled:enable];
            [out19 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 21:
            [out21 setEnabled:enable];
            [out21 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 22:
            [out22 setEnabled:enable];
            [out22 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 23:
            [out23 setEnabled:enable];
            [out23 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 24:
            [out24 setEnabled:enable];
            [out24 setBackgroundImage:backColor forState:UIControlStateNormal];            
            break;
        case 25:
            [out25 setEnabled:enable];
            [out25 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 26:
            [out26 setEnabled:enable];
            [out26 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 27:
            [out27 setEnabled:enable];
            [out27 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 28:
            [out28 setEnabled:enable];
            [out28 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 29:
            [out29 setEnabled:enable];
            [out29 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 31:
            [out31 setEnabled:enable];
            [out31 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 32:
            [out32 setEnabled:enable];
            [out32 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 33:
            [out33 setEnabled:enable];
            [out33 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 34:
            [out34 setEnabled:enable];
            [out34 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 35:
            [out35 setEnabled:enable];
            [out35 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 36:
            [out36 setEnabled:enable];
            [out36 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 37:
            [out37 setEnabled:enable];
            [out37 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 38:
            [out38 setEnabled:enable];
            [out38 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 39:
            [out39 setEnabled:enable];
            [out39 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 41:
            [out41 setEnabled:enable];
            [out41 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 42:
            [out42 setEnabled:enable];
            [out42 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 43:
            [out43 setEnabled:enable];
            [out43 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 44:
            [out44 setEnabled:enable];
            [out44 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 45:
            [out45 setEnabled:enable];
            [out45 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 46:
            [out46 setEnabled:enable];
            [out46 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 47:
            [out47 setEnabled:enable];
            [out47 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 48:
            [out48 setEnabled:enable];
            [out48 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 49:
            [out49 setEnabled:enable];
            [out49 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 51:
            [out51 setEnabled:enable];
            [out51 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 52:
            [out52 setEnabled:enable];
            [out52 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 53:
            [out53 setEnabled:enable];
            [out53 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 54:
            [out54 setEnabled:enable];
            [out54 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 55:
            [out55 setEnabled:enable];
            [out55 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 56:
            [out56 setEnabled:enable];
            [out56 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 57:
            [out57 setEnabled:enable];
            [out57 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 58:
            [out58 setEnabled:enable];
            [out58 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 59:
            [out59 setEnabled:enable];
            [out59 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 61:
            [out61 setEnabled:enable];
            [out61 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 62:
            [out62 setEnabled:enable];
            [out62 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 63:
            [out63 setEnabled:enable];
            [out63 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 64:
            [out64 setEnabled:enable];
            [out64 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 65:
            [out65 setEnabled:enable];
            [out65 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 66:
            [out66 setEnabled:enable];
            [out66 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 67:
            [out67 setEnabled:enable];
            [out67 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 68:
            [out68 setEnabled:enable];
            [out68 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 69:
            [out69 setEnabled:enable];
            [out69 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 71:
            [out71 setEnabled:enable];
            [out71 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 72:
            [out72 setEnabled:enable];
            [out72 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 73:
            [out73 setEnabled:enable];
            [out73 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 74:
            [out74 setEnabled:enable];
            [out74 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 75:
            [out75 setEnabled:enable];
            [out75 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 76:
            [out76 setEnabled:enable];
            [out76 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 77:
            [out77 setEnabled:enable];
            [out77 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 78:
            [out78 setEnabled:enable];
            [out78 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 79:
            [out79 setEnabled:enable];
            [out79 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 81:
            [out81 setEnabled:enable];
            [out81 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 82:
            [out82 setEnabled:enable];
            [out82 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 83:
            [out83 setEnabled:enable];
            [out83 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 84:
            [out84 setEnabled:enable];
            [out84 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 85:
            [out85 setEnabled:enable];
            [out85 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 86:
            [out86 setEnabled:enable];
            [out86 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 87:
            [out87 setEnabled:enable];
            [out87 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 88:
            [out88 setEnabled:enable];
            [out88 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 89:
            [out89 setEnabled:enable];
            [out89 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 91:
            [out91 setEnabled:enable];
            [out91 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 92:
            [out92 setEnabled:enable];
            [out92 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 93:
            [out93 setEnabled:enable];
            [out93 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 94:
            [out94 setEnabled:enable];
            [out94 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 95:
            [out95 setEnabled:enable];
            [out95 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 96:
            [out96 setEnabled:enable];
            [out96 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 97:
            [out97 setEnabled:enable];
            [out97 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 98:
            [out98 setEnabled:enable];
            [out98 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
        case 99:
            [out99 setEnabled:enable];
            [out99 setBackgroundImage:backColor forState:UIControlStateNormal];
            break;
            
        default:
            break;
    }
}

- (void)output:(NSInteger)cell :(NSInteger)output
{
    NSString *theTitle = [NSString stringWithFormat: @"%i", output];
    if (output == 0)
    {
        theTitle = [NSString stringWithFormat: @""];
        
    }
    UIButton *currentButton;
    switch (cell) {
        case 11:
            currentButton = (UIButton *)out11;            
            break;
        case 12:
            currentButton = (UIButton *)out12;
            break;
        case 13:
            currentButton = (UIButton *)out13;
            break;
        case 14:
            currentButton = (UIButton *)out14;
            break;
        case 15:
            currentButton = (UIButton *)out15;
            break;
        case 16:
            currentButton = (UIButton *)out16;
            break;
        case 17:
            currentButton = (UIButton *)out17;
            break;
        case 18:
            currentButton = (UIButton *)out18;
            break;
        case 19:
            currentButton = (UIButton *)out19;
            break;
        case 21:
            currentButton = (UIButton *)out21;
            break;
        case 22:
            currentButton = (UIButton *)out22;
            break;
        case 23:
            currentButton = (UIButton *)out23;
            break;
        case 24:
            currentButton = (UIButton *)out24;        
            break;
        case 25:
            currentButton = (UIButton *)out25;
            break;
        case 26:
            currentButton = (UIButton *)out26;
            break;
        case 27:
            currentButton = (UIButton *)out27;
            break;
        case 28:
            currentButton = (UIButton *)out28;
            break;
        case 29:
            currentButton = (UIButton *)out29;
            break;
        case 31:
            currentButton = (UIButton *)out31;
            break;
        case 32:
            currentButton = (UIButton *)out32;
            break;
        case 33:
            currentButton = (UIButton *)out33;
            break;
        case 34:
            currentButton = (UIButton *)out34;
            break;
        case 35:
            currentButton = (UIButton *)out35;
            break;
        case 36:
            currentButton = (UIButton *)out36;
            break;
        case 37:
            currentButton = (UIButton *)out37;
            break;
        case 38:
            currentButton = (UIButton *)out38;
            break;
        case 39:
            currentButton = (UIButton *)out39;
            break;
        case 41:
            currentButton = (UIButton *)out41;
            break;
        case 42:
            currentButton = (UIButton *)out42;
            break;
        case 43:
            currentButton = (UIButton *)out43;
            break;
        case 44:
            currentButton = (UIButton *)out44;
            break;
        case 45:
            currentButton = (UIButton *)out45;
            break;
        case 46:
            currentButton = (UIButton *)out46;
            break;
        case 47:
            currentButton = (UIButton *)out47;
            break;
        case 48:
            currentButton = (UIButton *)out48;
            break;
        case 49:
            currentButton = (UIButton *)out49;
            break;
        case 51:
            currentButton = (UIButton *)out51;
            break;
        case 52:
            currentButton = (UIButton *)out52;
            break;
        case 53:
            currentButton = (UIButton *)out53;
            break;
        case 54:
            currentButton = (UIButton *)out54;
            break;
        case 55:
            currentButton = (UIButton *)out55;
            break;
        case 56:
            currentButton = (UIButton *)out56;
            break;
        case 57:
            currentButton = (UIButton *)out57;
            break;
        case 58:
            currentButton = (UIButton *)out58;
            break;
        case 59:
            currentButton = (UIButton *)out59;
            break;
        case 61:
            currentButton = (UIButton *)out61;
            break;
        case 62:
            currentButton = (UIButton *)out62;
            break;
        case 63:
            currentButton = (UIButton *)out63;
            break;
        case 64:
            currentButton = (UIButton *)out64;
            break;
        case 65:
            currentButton = (UIButton *)out65;
            break;
        case 66:
            currentButton = (UIButton *)out66;
            break;
        case 67:
            currentButton = (UIButton *)out67;
            break;
        case 68:
            currentButton = (UIButton *)out68;
            break;
        case 69:
            currentButton = (UIButton *)out69;
            break;
        case 71:
            currentButton = (UIButton *)out71;
            break;
        case 72:
            currentButton = (UIButton *)out72;
            break;
        case 73:
            currentButton = (UIButton *)out73;
            break;
        case 74:
            currentButton = (UIButton *)out74;
            break;
        case 75:
            currentButton = (UIButton *)out75;
            break;
        case 76:
            currentButton = (UIButton *)out76;
            break;
        case 77:
            currentButton = (UIButton *)out77;
            break;
        case 78:
            currentButton = (UIButton *)out78;
            break;
        case 79:
            currentButton = (UIButton *)out79;
            break;
        case 81:
            currentButton = (UIButton *)out81;
            break;
        case 82:
            currentButton = (UIButton *)out82;
            break;
        case 83:
            currentButton = (UIButton *)out83;
            break;
        case 84:
            currentButton = (UIButton *)out84;
            break;
        case 85:
            currentButton = (UIButton *)out85;
            break;
        case 86:
            currentButton = (UIButton *)out86;
            break;
        case 87:
            currentButton = (UIButton *)out87;
            break;
        case 88:
            currentButton = (UIButton *)out88;
            break;
        case 89:
            currentButton = (UIButton *)out89;
            break;
        case 91:
            currentButton = (UIButton *)out91;
            break;
        case 92:
            currentButton = (UIButton *)out92;
            break;
        case 93:
            currentButton = (UIButton *)out93;
            break;
        case 94:
            currentButton = (UIButton *)out94;
            break;
        case 95:
            currentButton = (UIButton *)out95;
            break;
        case 96:
            currentButton = (UIButton *)out96;
            break;
        case 97:
            currentButton = (UIButton *)out97;
            break;
        case 98:
            currentButton = (UIButton *)out98;
            break;
        case 99:
            currentButton = (UIButton *)out99;
            break;
            
        default:
            break;
    }
    [currentButton setTitle:theTitle forState:UIControlStateNormal];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//set whether a number is true or false for that grid
- (void)setGridValue:(NSInteger)row :(NSInteger)col :(NSInteger)num :(BOOL)value
{
    NSInteger number = 90*(col-1)+10*(row-1)+num;
    theGrid[number] = value;
}

//get whether a number should be true or false for grid
- (BOOL)getGridValue:(NSInteger)row :(NSInteger)col: (NSInteger)num
{
    NSInteger number = 90*(col-1)+10*(row-1)+num;
    return theGrid[number];
}

- (IBAction)autoSolveOn:(id)sender 
{
    UISwitch *thisSwitch = (UISwitch *)sender;
    autoSolve = thisSwitch.isOn;
    if (autoSolve)
    {
        [self solve];
    }
}

- (IBAction)startOver:(id)sender 
{
    for (int i=0; i<810; i++)
    {
        theGrid[i] = TRUE;
    }
    for (int i=11; i<=99; i++)
    {
        [self output:i :0];
        [self enableCell:i :TRUE];
    }
}

- (IBAction)doWork:(id)sender 
{
    oneTimeSolve = TRUE;
    [self solve];
}

// User selects different number from segmented control
- (IBAction)changeCurrentNumber:(id)sender 
{
    //assign number from segmented control to currentNumber
    currentNumber = [sender selectedSegmentIndex];
    
    //if the segmented control isn't the clear function
    if (currentNumber !=0)
    {
        //iterate through every cell,
        //  "enable" or "disable" cell depending on if it's eligible
        //  to recieve the current number selected.
        for (int i = 1; i<10; i++) 
        {
            for (int j = 1; j<10; j++) 
            {
                NSInteger cellNum = (i*10)+j;
                BOOL check = [self getGridValue:j :i :currentNumber];
                [self enableCell:cellNum :check];
            }
        }
    } 
    //else, if the segmented control is set to the clear function
    else
    {
        //enable every cell to be eligible for clearing
        for (int i = 1; i<10; i++) 
        {
            for (int j = 1; j<10; j++) 
            {
                NSInteger cellNum = i*10+j;
                [self enableCell:cellNum :TRUE];
            }
        } 
    }
    
}

// Dynamically runs a check to see if any cells can be updated
- (void) solve
{
    if (autoSolve||oneTimeSolve)
    {
    oneTimeSolve = FALSE;
    // Does a easy prelimanary check to see if we already have more stuff solved
    moreToSolve = TRUE;
    while (moreToSolve) 
    {
        moreToSolve = FALSE;
        NSInteger count = 0;
        NSInteger number = 0;
        // Itterate Rows
        for (int i = 1; i<=9; i++) 
        {
            // Cols
            for (int j = 1; j<=9; j++) 
            {
                count = 0;
                // Numbers
                for (int k = 1;  k<=9; k++)
                {
                    // If not already solved
                    if([self getGridValue:i :j :0])
                    {
                        if([self getGridValue:i :j :k])
                        {
                            count++;
                            number = k;
                        }
                    }
                }
                // If only one number in a cell
                if (count == 1)
                {
                    [self setGridValue:i :j :0 :FALSE];
                    moreToSolve = TRUE;
                    NSInteger cell = i+10*j;
                    [self output:cell :number];
                    [self assignNum: cell :number];
                }
            }
        }
    }
    BOOL region[9];
    NSInteger count=0;
    NSInteger number=0;
    NSInteger cell = 0;
    for (int k=1; k<=9; k++)
    {
        count = 0;
        // FIRST  BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+1;
            i=n/3+1;
            region[n] = [self getGridValue:i :j :k];

            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // SECOND BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+4;
            i=n/3+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // THIRD BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+7;
            i=n/3+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // FOURTH BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+1;
            i=n/3+4;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // FIFTH BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+4;
            i=n/3+4;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // SITXH BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+4;
            i=n/3+7;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // SEVENTH BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+7;
            i=n/3+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // EIGTH BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+7;
            i=n/3+4;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // NINTH BLOCK
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n%3+7;
            i=n/3+7;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }

    }
    
    // CHECK BY ROWS
    for (int k=1; k<=9; k++)
    {
        count = 0;
        // FIRST  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        //*
        count = 0;
        // SECOND  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=2;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        
        
        // THIRD  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=3;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }   
        
        count = 0;
        
        
        // FOURTH  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=4;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        
        count = 0;
        // FIFTH  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=5;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        
        // SIX  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=6;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        
        // SEVENTH  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=7;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }  
        
        
        count = 0;
        // EIGTH  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=8;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }   
    
        
        count = 0;
        // NINTH  ROW
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=n+1;
            i=9;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
    }
    //*
    // CHECK BY COLS
    for (int k=1; k<=9; k++)
    {
        count = 0;
        // FIRST  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=1;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        // SECOND COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=2;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        // THIRD  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=3;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }   
        
        count = 0;
        // FOURTH  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=4;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }
        
        count = 0;
        // FIFTH  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=5;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        // SIX  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=6;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        
        count = 0;
        // SEVENTH  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=7;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }  
        
        count = 0;
        // EIGTH  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=8;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }   
        
        count = 0;
        // NINTH  COL
        for (int n=0; n<9; n++)
        {
            int i, j;
            j=9;
            i=n+1;
            region[n] = [self getGridValue:i :j :k];
            
            if (region[n])
            {
                if([self getGridValue:i :j :0])
                {
                    count++;
                    number = k;
                    cell = i+10*j;
                }
            }
            
        }
        if (count ==1)
        {
            [self output:cell :number];
            [self assignNum: cell :number];
        }     
        //*/
    }
    //*/
    }
}

//assign passed cell the passed number
- (void) assignNum:(NSInteger)cell :(NSInteger)num
{
    NSInteger row = cell;
    while (row>10) 
    {
        row -= 10;
    }
    NSInteger col = cell/10;    
    // Sets the entire "block" to false
    [self setBlock:row :col :num :FALSE];
        
    //if current number is not the Clear button,
    //  set the rows, columns, and current cell to disabled.
    //  disable other numbers to be used.
    if (num != 0)
    {
        for (NSInteger i = 1; i < 10; i++)
        {
            [self setGridValue:row :i :num :FALSE];
            [self setGridValue:i :col :num :FALSE];
            [self setGridValue:row :col :i :FALSE];
        }
        [self setGridValue:row :col :num :TRUE];
        [self setGridValue:row :col :0 :FALSE];
    }
}

// user clicks on cell, expects it to be assigned selected number
- (IBAction)assignNumber:(id)sender 
{
    //initialize values:
    //      tag (tag of the square)
    //      row (row of the square)
    //      col (column of the square)
    //      num (number to insert, based on segmented control)
    NSInteger tag = [sender tag];
    NSInteger row = tag;
    while (row>10) 
    {
        row -= 10;
    }
    NSInteger col = tag/10;
    NSInteger num = currentNumber;
    NSInteger prevNum = 0;
    NSString *theTitle;
    
    //find previous number of cell
    for (int i = 1; i<10; i++)
    {
        BOOL gridVal = [self getGridValue:row :col :i];
        if (gridVal == TRUE)
        {
            prevNum = i;
        }
    }
    NSLog(@"%i", prevNum);
    
    // Sets the entire "block" to false
    //     true if removing a number
    if (currentNumber != 0)
    {
        [self setBlock:row :col :currentNumber :FALSE];
    } else {
        [self setBlock:row :col :currentNumber :TRUE];

    }
    
    //if we are assigning the square a value
    if (currentNumber != 0)
    {
        //set all number values in that cell to false
        for (NSInteger i = 1; i < 10; i++)
        {
            [self setGridValue:row :i :num :FALSE];
            [self setGridValue:i :col :num :FALSE];
            [self setGridValue:row :col :i :FALSE];
        }
        //set the number value of the number we're inserting to true
        [self setGridValue:row :col :num :TRUE];
        [self setGridValue:row :col :0 :FALSE];
        theTitle = [NSString stringWithFormat: @"%i", currentNumber];
    }
    //else, if the current number is the Clear Function
    else 
    {
        //set title of button to nothing
        theTitle = [NSString stringWithFormat: @""];
        
        for (NSInteger i = 1; i < 10; i++)
        {
            //sets every number in selected cell to be eligible again
            [self setGridValue:row :col :i :TRUE];
            
            for (NSInteger j = 1; j <10; j++)
            {
                //set every cell back to be eligible for deletion
                [self setGridValue:i :j :0 :TRUE];
                
                //set every value of prevNum to TRUE, clear the board
                //[self setGridValue:i :j :prevNum :TRUE];
            }
        }
        
        //set the row/column/Block of the cell to be TRUE 
        // again for the previous value
        [self setRow:row :col :prevNum :TRUE];
        [self setColumn:row :col :prevNum :TRUE];
        [self setBlock:row :col :prevNum :TRUE];
        
        //find any other iterations of prevNum and make sure their parameters are still in place
        
    }
    
    //set title of current button to the new number
    UIButton *currentButton = (UIButton *)sender;
    [currentButton setTitle:theTitle forState:UIControlStateNormal];
    
    // Disables cells in which number is no longer eligible
    //  iterate through all cells, check their true/false value for
    //  selected number
    for (int i = 1; i<10; i++) 
    {
        for (int j = 1; j<10; j++) 
        {
            NSInteger cellNum = (i*10)+j;
            BOOL check = [self getGridValue:j :i :currentNumber];
            [self enableCell:cellNum :check];
        }
    }
    [self solve];
}

//returns the int value a cell is holding
-(NSInteger) getValueFromCell: (NSInteger)row :(NSInteger)column :(NSInteger)num {
    NSInteger val = 0;
    NSInteger cell = (10*row)+column;
    
    switch (cell) {
        case 11:
            val = (NSInteger)out11.currentTitle;
            break;
        case 12:
            val = (NSInteger)out12.currentTitle;
            break;
        case 13:
            val = (NSInteger)out13.currentTitle;
            break;
        case 14:
            val = (NSInteger)out14.currentTitle;
            break;
        case 15:
            val = (NSInteger)out15.currentTitle;
            break;
        case 16:
            val = (NSInteger)out16.currentTitle;
            break;
        case 17:
            val = (NSInteger)out17.currentTitle;
            break;
        case 18:
            val = (NSInteger)out18.currentTitle;
            break;
        case 19:
            val = (NSInteger)out19.currentTitle;
            break;
        case 21:
            val = (NSInteger)out21.currentTitle;            break;
        case 22:
            val = (NSInteger)out22.currentTitle;
            break;
        case 23:
            val = (NSInteger)out23.currentTitle;
            break;
        case 24:
            val = (NSInteger)out24.currentTitle;       
            break;
        case 25:
            val = (NSInteger)out25.currentTitle;
            break;
        case 26:
            val = (NSInteger)out26.currentTitle;
            break;
        case 27:
            val = (NSInteger)out27.currentTitle;
            break;
        case 28:
            val = (NSInteger)out28.currentTitle;
            break;
        case 29:
            val = (NSInteger)out29.currentTitle;
            break;
        case 31:
            val = (NSInteger)out31.currentTitle;
            break;
        case 32:
            val = (NSInteger)out32.currentTitle;
            break;
        case 33:
            val = (NSInteger)out33.currentTitle;
            break;
        case 34:
            val = (NSInteger)out34.currentTitle;
            break;
        case 35:
            val = (NSInteger)out35.currentTitle;
            break;
        case 36:
            val = (NSInteger)out36.currentTitle;
            break;
        case 37:
            val = (NSInteger)out37.currentTitle;
            break;
        case 38:
            val = (NSInteger)out38.currentTitle;
            break;
        case 39:
            val = (NSInteger)out39.currentTitle;
            break;
        case 41:
            val = (NSInteger)out41.currentTitle;
            break;
        case 42:
            val = (NSInteger)out42.currentTitle;
            break;
        case 43:
            val = (NSInteger)out43.currentTitle;
            break;
        case 44:
            val = (NSInteger)out44.currentTitle;
            break;
        case 45:
            val = (NSInteger)out45.currentTitle;
            break;
        case 46:
            val = (NSInteger)out46.currentTitle;
            break;
        case 47:
            val = (NSInteger)out47.currentTitle;
            break;
        case 48:
            val = (NSInteger)out48.currentTitle;
            break;
        case 49:
            val = (NSInteger)out49.currentTitle;
            break;
        case 51:
            val = (NSInteger)out51.currentTitle;
            break;
        case 52:
            val = (NSInteger)out52.currentTitle;
            break;
        case 53:
            val = (NSInteger)out53.currentTitle;
            break;
        case 54:
            val = (NSInteger)out54.currentTitle;
            break;
        case 55:
            val = (NSInteger)out55.currentTitle;
            break;
        case 56:
            val = (NSInteger)out56.currentTitle;
            break;
        case 57:
            val = (NSInteger)out57.currentTitle;
            break;
        case 58:
            val = (NSInteger)out58.currentTitle;
            break;
        case 59:
            val = (NSInteger)out59.currentTitle;
            break;
        case 61:
            val = (NSInteger)out61.currentTitle;
            break;
        case 62:
            val = (NSInteger)out62.currentTitle;
            break;
        case 63:
            val = (NSInteger)out63.currentTitle;
            break;
        case 64:
            val = (NSInteger)out64.currentTitle;
            break;
        case 65:
            val = (NSInteger)out65.currentTitle;
            break;
        case 66:
            val = (NSInteger)out66.currentTitle;
            break;
        case 67:
            val = (NSInteger)out67.currentTitle;
            break;
        case 68:
            val = (NSInteger)out68.currentTitle;
            break;
        case 69:
            val = (NSInteger)out69.currentTitle;
            break;
        case 71:
            val = (NSInteger)out71.currentTitle;
            break;
        case 72:
            val = (NSInteger)out72.currentTitle;
            break;
        case 73:
            val = (NSInteger)out73.currentTitle;
            break;
        case 74:
            val = (NSInteger)out74.currentTitle;
            break;
        case 75:
            val = (NSInteger)out75.currentTitle;
            break;
        case 76:
            val = (NSInteger)out76.currentTitle;
            break;
        case 77:
            val = (NSInteger)out77.currentTitle;
            break;
        case 78:
            val = (NSInteger)out78.currentTitle;
            break;
        case 79:
            val = (NSInteger)out79.currentTitle;
            break;
        case 81:
            val = (NSInteger)out81.currentTitle;
            break;
        case 82:
            val = (NSInteger)out82.currentTitle;
            break;
        case 83:
            val = (NSInteger)out83.currentTitle;
            break;
        case 84:
            val = (NSInteger)out84.currentTitle;
            break;
        case 85:
            val = (NSInteger)out85.currentTitle;
            break;
        case 86:
            val = (NSInteger)out86.currentTitle;
            break;
        case 87:
            val = (NSInteger)out87.currentTitle;
            break;
        case 88:
            val = (NSInteger)out88.currentTitle;
            break;
        case 89:
            val = (NSInteger)out89.currentTitle;
            break;
        case 91:
            val = (NSInteger)out91.currentTitle;
            break;
        case 92:
            val = (NSInteger)out92.currentTitle;
            break;
        case 93:
            val = (NSInteger)out93.currentTitle;
            break;
        case 94:
            val = (NSInteger)out94.currentTitle;
            break;
        case 95:
            val = (NSInteger)out95.currentTitle;
            break;
        case 96:
            val = (NSInteger)out96.currentTitle;
            break;
        case 97:
            val = (NSInteger)out97.currentTitle;
            break;
        case 98:
            val = (NSInteger)out98.currentTitle;
            break;
        case 99:
            val = (NSInteger)out99.currentTitle;
            break;

        default: 
            break;
    }
    
    return val;
}
//sets entire row from cell to be enabled or disabled
- (void) setRow:(NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL)enable {
    for (NSInteger i = 1; i < 10; i++)
    {
        [self setGridValue:row :i :num :enable];
    }
}

//sets entire column from cell to be enabled or disabled
- (void) setColumn: (NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL)enable {
    for (NSInteger i = 1; i < 10; i++)
    {
        [self setGridValue:i :col :num :enable];
    }
}

//sets entire block from cell to be enabled or disabled
- (void) setBlock: (NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL)enable {
    if (row<=3)
    {
        //block 1
        if (col<=3)
        {
            for (int i =1; i<=3; i++)
            {
                for (int j=1; j<=3; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
        //block 2
        if (col>=4 && col<=6)
        {
            for (int i =1; i<=3; i++)
            {
                for (int j=4; j<=6; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
        //block 3
        if (col>=7 && col<=9)
        {
            for (int i =1; i<=3; i++)
            {
                for (int j=7; j<=9; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
    }
    if (row>=4 && row<=6)
    {
        //block 4
        if (col<=3)
        {
            for (int i =4; i<=6; i++)
            {
                for (int j=1; j<=3; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
        //block 5
        if (col>=4 && col<=6)
        {
            for (int i =4; i<=6; i++)
            {
                for (int j=4; j<=6; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
        //block 6
        if (col>=7 && col<=9)
        {
            for (int i =4; i<=6; i++)
            {
                for (int j=7; j<=9; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
    }
    if (row>=7 && row<=9)
    {
        //block 7
        if (col<=3)
        {
            for (int i =7; i<=9; i++)
            {
                for (int j=1; j<=3; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
        //block 8
        if (col>=4 && col<=6)
        {
            for (int i =7; i<=9; i++)
            {
                for (int j=4; j<=6; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
        //block 9
        if (col>=7 && col<=9)
        {
            for (int i =7; i<=9; i++)
            {
                for (int j=7; j<=9; j++)
                {
                    [self setGridValue:i :j :num :enable];
                }
            }
        }
    }
}
@end
