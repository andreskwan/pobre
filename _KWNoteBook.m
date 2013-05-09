// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KWNoteBook.m instead.

#import "_KWNoteBook.h"

const struct KWNoteBookAttributes KWNoteBookAttributes = {
	.creationDate = @"creationDate",
	.modificationDate = @"modificationDate",
	.name = @"name",
};

const struct KWNoteBookRelationships KWNoteBookRelationships = {
};

const struct KWNoteBookFetchedProperties KWNoteBookFetchedProperties = {
};

@implementation KWNoteBookID
@end

@implementation _KWNoteBook

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"NoteBook" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"NoteBook";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"NoteBook" inManagedObjectContext:moc_];
}

- (KWNoteBookID*)objectID {
	return (KWNoteBookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic creationDate;






@dynamic modificationDate;






@dynamic name;











@end
