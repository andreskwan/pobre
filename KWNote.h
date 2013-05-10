#import "_KWNote.h"
#import "KWNoteBook.h"


@interface KWNote : _KWNote {}
// Custom logic goes here.

+(id)noteInNoteBook:(KWNoteBook *) aNoteBook
withContext: (NSManagedObjectContext *)aContext;



@end
