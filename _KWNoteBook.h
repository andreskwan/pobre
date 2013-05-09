// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KWNoteBook.h instead.

#import <CoreData/CoreData.h>


extern const struct KWNoteBookAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
} KWNoteBookAttributes;

extern const struct KWNoteBookRelationships {
	__unsafe_unretained NSString *notes;
} KWNoteBookRelationships;

extern const struct KWNoteBookFetchedProperties {
} KWNoteBookFetchedProperties;

@class KWNote;





@interface KWNoteBookID : NSManagedObjectID {}
@end

@interface _KWNoteBook : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (KWNoteBookID*)objectID;





@property (nonatomic, strong) NSDate* creationDate;



//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* modificationDate;



//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) KWNote *notes;

//- (BOOL)validateNotes:(id*)value_ error:(NSError**)error_;





@end

@interface _KWNoteBook (CoreDataGeneratedAccessors)

@end

@interface _KWNoteBook (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;




- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (KWNote*)primitiveNotes;
- (void)setPrimitiveNotes:(KWNote*)value;


@end
