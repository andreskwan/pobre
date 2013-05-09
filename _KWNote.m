// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KWNote.m instead.

#import "_KWNote.h"

const struct KWNoteAttributes KWNoteAttributes = {
	.creationDate = @"creationDate",
	.modificationDate = @"modificationDate",
	.name = @"name",
	.photo = @"photo",
	.text = @"text",
};

const struct KWNoteRelationships KWNoteRelationships = {
	.notebook = @"notebook",
};

const struct KWNoteFetchedProperties KWNoteFetchedProperties = {
};

@implementation KWNoteID
@end

@implementation _KWNote

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Note" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Note";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Note" inManagedObjectContext:moc_];
}

- (KWNoteID*)objectID {
	return (KWNoteID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic creationDate;






@dynamic modificationDate;






@dynamic name;






@dynamic photo;






@dynamic text;






@dynamic notebook;

	






@end
