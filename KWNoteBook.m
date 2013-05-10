#import "KWNoteBook.h"


@interface KWNoteBook ()

// Private interface goes here.

@end


@implementation KWNoteBook

// Custom logic goes here.

+(id)notebookInContext:(NSManagedObjectContext *)aContext
{
    //objeto con valores por defecto (falta rellenar las fechas)
    KWNoteBook *nb = [self insertInManagedObjectContext:aContext];
    
    //ponemos las fechas
    nb.creationDate = [NSDate date];
    nb.modificationDate = nb.creationDate;
    
    
    return nb;
}
#pragma mark - Life Cicle
-(void) awakeFormInsert{
    //cosas que debe hacer NSManageObject
    [super awakeFromInsert];
    //Me lo envian una sola vez, la primera vez
    //que soy creado
    [self setupKVO];
}

-(void) awakeFromFetch
{
    [super awakeFromFetch];
    
    //me lo envian siempre que sea recuperado de
    //la BD
    [self setupKVO];
    
}

-(void)willTurnIntoFault
{
    [super willTurnIntoFault];
    //me lo envia cada vez que estoy a punto de morir
    [self setupKVO];
}
#pragma mark - KVO
-(void) setupKVO
{
    //mostrar las notificaciones
    //observador de mi mismo
    [self addObserver:self
           forKeyPath:@"name"
              options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
              context:NULL];//puntero a void
}

-(void) tearDownKVO
{
        [self removeObserver:self
                  forKeyPath:@"name"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    //Actualizo la modificationDate
    self.modificationDate = [NSDate date];
}

@end
