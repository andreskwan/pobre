#import "_KWNoteBook.h"

@interface KWNoteBook : _KWNoteBook {}
// Custom logic goes here.
+(id) notebookInContext: (NSManagedObjectContext *)aContext;

@property (nonatomic,readonly)NSString * age;

@end
