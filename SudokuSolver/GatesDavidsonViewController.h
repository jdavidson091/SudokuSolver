//
//  GatesDavidsonViewController.h
//  SudokuSolver
//
//  Created by John Davidson on 10/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GatesDavidsonViewController : UIViewController
{
    BOOL theGrid[810];
    BOOL moreToSolve;
    BOOL autoSolve;
    BOOL oneTimeSolve;
    NSInteger currentNumber;
    NSInteger editedCell;    
}
- (IBAction)autoSolveOn:(id)sender;
- (IBAction)startOver:(id)sender;
- (IBAction)doWork:(id)sender;
- (IBAction)changeCurrentNumber:(id)sender;
- (IBAction)assignNumber:(id)sender;
- (void) assignNum:(NSInteger)cell: (NSInteger) num;
- (void) setGridValue: (NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL) value;
- (BOOL) getGridValue: (NSInteger)row: (NSInteger)col: (NSInteger)num;
- (void) enableCell: (NSInteger)cell: (BOOL)enable;
- (void) solve;
- (void) output: (NSInteger)cell: (NSInteger)output;
- (void) setRow:(NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL)enable;
- (void) setColumn: (NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL)enable;
- (void) setBlock: (NSInteger)row: (NSInteger)col: (NSInteger)num: (BOOL)enable;
-(NSInteger) getValueFromCell: (NSInteger)row :(NSInteger)column :(NSInteger)num;


@property (weak, nonatomic) IBOutlet UIButton *out11;
@property (weak, nonatomic) IBOutlet UIButton *out12;
@property (weak, nonatomic) IBOutlet UIButton *out13;
@property (weak, nonatomic) IBOutlet UIButton *out14;
@property (weak, nonatomic) IBOutlet UIButton *out15;
@property (weak, nonatomic) IBOutlet UIButton *out16;
@property (weak, nonatomic) IBOutlet UIButton *out17;
@property (weak, nonatomic) IBOutlet UIButton *out18;
@property (weak, nonatomic) IBOutlet UIButton *out19;
@property (weak, nonatomic) IBOutlet UIButton *out21;
@property (weak, nonatomic) IBOutlet UIButton *out22;
@property (weak, nonatomic) IBOutlet UIButton *out23;
@property (weak, nonatomic) IBOutlet UIButton *out24;
@property (weak, nonatomic) IBOutlet UIButton *out25;
@property (weak, nonatomic) IBOutlet UIButton *out26;
@property (weak, nonatomic) IBOutlet UIButton *out27;
@property (weak, nonatomic) IBOutlet UIButton *out28;
@property (weak, nonatomic) IBOutlet UIButton *out29;
@property (weak, nonatomic) IBOutlet UIButton *out31;
@property (weak, nonatomic) IBOutlet UIButton *out32;
@property (weak, nonatomic) IBOutlet UIButton *out33;
@property (weak, nonatomic) IBOutlet UIButton *out34;
@property (weak, nonatomic) IBOutlet UIButton *out35;
@property (weak, nonatomic) IBOutlet UIButton *out36;
@property (weak, nonatomic) IBOutlet UIButton *out37;
@property (weak, nonatomic) IBOutlet UIButton *out38;
@property (weak, nonatomic) IBOutlet UIButton *out39;
@property (weak, nonatomic) IBOutlet UIButton *out41;
@property (weak, nonatomic) IBOutlet UIButton *out42;
@property (weak, nonatomic) IBOutlet UIButton *out43;
@property (weak, nonatomic) IBOutlet UIButton *out44;
@property (weak, nonatomic) IBOutlet UIButton *out45;
@property (weak, nonatomic) IBOutlet UIButton *out46;
@property (weak, nonatomic) IBOutlet UIButton *out47;
@property (weak, nonatomic) IBOutlet UIButton *out48;
@property (weak, nonatomic) IBOutlet UIButton *out49;
@property (weak, nonatomic) IBOutlet UIButton *out51;
@property (weak, nonatomic) IBOutlet UIButton *out52;
@property (weak, nonatomic) IBOutlet UIButton *out53;
@property (weak, nonatomic) IBOutlet UIButton *out54;
@property (weak, nonatomic) IBOutlet UIButton *out55;
@property (weak, nonatomic) IBOutlet UIButton *out56;
@property (weak, nonatomic) IBOutlet UIButton *out57;
@property (weak, nonatomic) IBOutlet UIButton *out58;
@property (weak, nonatomic) IBOutlet UIButton *out59;
@property (weak, nonatomic) IBOutlet UIButton *out61;
@property (weak, nonatomic) IBOutlet UIButton *out62;
@property (weak, nonatomic) IBOutlet UIButton *out63;
@property (weak, nonatomic) IBOutlet UIButton *out64;
@property (weak, nonatomic) IBOutlet UIButton *out65;
@property (weak, nonatomic) IBOutlet UIButton *out66;
@property (weak, nonatomic) IBOutlet UIButton *out67;
@property (weak, nonatomic) IBOutlet UIButton *out68;
@property (weak, nonatomic) IBOutlet UIButton *out69;
@property (weak, nonatomic) IBOutlet UIButton *out71;
@property (weak, nonatomic) IBOutlet UIButton *out72;
@property (weak, nonatomic) IBOutlet UIButton *out73;
@property (weak, nonatomic) IBOutlet UIButton *out74;
@property (weak, nonatomic) IBOutlet UIButton *out75;
@property (weak, nonatomic) IBOutlet UIButton *out76;
@property (weak, nonatomic) IBOutlet UIButton *out77;
@property (weak, nonatomic) IBOutlet UIButton *out78;
@property (weak, nonatomic) IBOutlet UIButton *out79;
@property (weak, nonatomic) IBOutlet UIButton *out81;
@property (weak, nonatomic) IBOutlet UIButton *out82;
@property (weak, nonatomic) IBOutlet UIButton *out83;
@property (weak, nonatomic) IBOutlet UIButton *out84;
@property (weak, nonatomic) IBOutlet UIButton *out85;
@property (weak, nonatomic) IBOutlet UIButton *out86;
@property (weak, nonatomic) IBOutlet UIButton *out87;
@property (weak, nonatomic) IBOutlet UIButton *out88;
@property (weak, nonatomic) IBOutlet UIButton *out89;
@property (weak, nonatomic) IBOutlet UIButton *out91;
@property (weak, nonatomic) IBOutlet UIButton *out92;
@property (weak, nonatomic) IBOutlet UIButton *out93;
@property (weak, nonatomic) IBOutlet UIButton *out94;
@property (weak, nonatomic) IBOutlet UIButton *out95;
@property (weak, nonatomic) IBOutlet UIButton *out96;
@property (weak, nonatomic) IBOutlet UIButton *out97;
@property (weak, nonatomic) IBOutlet UIButton *out98;
@property (weak, nonatomic) IBOutlet UIButton *out99;


@end
