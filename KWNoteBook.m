#import "KWNoteBook.h"


@interface KWNoteBook ()

// Private interface goes here.

@end


@implementation KWNoteBook

// Custom logic goes here.

+(id)notebookInCOntext:(NSManagedObjectContext *)aContext
{
    //objeto con valores por defecto (falta rellenar las fechas)
    KWNoteBook *nb = [self insertInManagedObjectContext:aContext];
    
    //ponemos las fechas
    nb.creationDate = [NSDate date];
    nb.modificationDate = nb.creationDate;
    
    return nb;
}

@end
