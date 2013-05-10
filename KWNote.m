#import "KWNote.h"


@interface KWNote ()

// Private interface goes here.

@end


@implementation KWNote

// Custom logic goes here.

+(id)noteInNoteBook:(KWNoteBook *) aNoteBook
        withContext: (NSManagedObjectContext *)aContext;
{
    KWNote *note = [KWNote insertInManagedObjectContext:aContext];
    note.notebook = aNoteBook;
    note.creationDate = [NSDate date];
    note.modificationDate = [NSDate date];
    return note;
}

#pragma mark - life cycle
-(void) awakeFromInsert
{
    [super awakeFromInsert];
    [self setupKVO];
}

-(void) awakeFromFetch
{
    [super awakeFromFetch];
    [self setupKVO];
}

#pragma mark - KVO
-(void) setupKVO
{
    NSArray *keys = @[@"name",@"text",@"photo"];
    for (NSString * key in keys) {
        [self addObserver:self
               forKeyPath:key
                  options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew
                  context:NULL];
    }
}

-(void) tearDownKVO
{
    [@[@"name", @"text", @"photo"] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        [self removeObserver:self
                  forKeyPath:obj];
    }];
}

//recibir la notificacion
-(void) observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    self.modificationDate = [NSDate date];
}
@end
