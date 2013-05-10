//
//  KWNoteBookViewController.m
//  Everpobre
//
//  Created by Andres Kwan on 5/10/13.
//  Copyright (c) 2013 Kwan. All rights reserved.
//

#import "KWNoteBookViewController.h"
#import "KWNoteBook.h"

@interface KWNoteBookViewController ()

@end

@implementation KWNoteBookViewController

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.title = @"Everpobre";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table Data Source
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //averiguar el notebook que nos piden
    KWNoteBook * nb = [self.fetchedResultsController objectAtIndexPath:indexPath];

    //crear un id de celda
    static NSString *cellID = @"cellID";

    //pedirle a al atabla una celda que tenga a mano
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    
    //si no tiene ninguna, crear una desde cero
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle
                                                       reuseIdentifier:cellID];

    }

    //configurarla: sincronizar celda (vista) con notebook (modelo)
    cell.textLabel.text = nb.name;
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    formatter.timeStyle = NSDateFormatterMediumStyle;
    cell.detailTextLabel.text = [formatter stringFromDate:nb.modificationDate];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
    
}

#pragma mark - Table View Delgate
@end
