#import "FirstViewController.h"

@interface FirstViewController ()
@end



@implementation FirstViewController

@synthesize label1text;
-(IBAction)clicked:(id)sender{
    
    NSString *titleOFButton = [sender titleForState:UIControlStateNormal];
    NSString *newLabelText = [[NSString alloc] initWithFormat:@"%@", titleOFButton];
    label1text.text = newLabelText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
