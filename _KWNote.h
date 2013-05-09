// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KWNote.h instead.

#import <CoreData/CoreData.h>


extern const struct KWNoteAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *photo;
	__unsafe_unretained NSString *text;
} KWNoteAttributes;

extern const struct KWNoteRelationships {
	__unsafe_unretained NSString *notebook;
} KWNoteRelationships;

extern const struct KWNoteFetchedProperties {
} KWNoteFetchedProperties;

@class KWNoteBook;




@class NSObject;


@interface KWNoteID : NSManagedObjectID {}
@end

@interface _KWNote : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (KWNoteID*)objectID;





@property (nonatomic, strong) NSDate* creationDate;



//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* modificationDate;



//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) id photo;



//- (BOOL)validatePhoto:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* text;



//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) KWNoteBook *notebook;

//- (BOOL)validateNotebook:(id*)value_ error:(NSError**)error_;





@end

@interface _KWNote (CoreDataGeneratedAccessors)

@end

@interface _KWNote (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;




- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (id)primitivePhoto;
- (void)setPrimitivePhoto:(id)value;




- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;





- (KWNoteBook*)primitiveNotebook;
- (void)setPrimitiveNotebook:(KWNoteBook*)value;


@end
