//
//  UIDevice+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 15/07/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "UIDevice+DMCore.h"

#import <sys/utsname.h>
#import <mach/mach.h>
#import <mach/mach_host.h>

@implementation UIDevice (DMCore)

- (NSNumber*)dm_MemoryFree
{
	// This code is thanks to Nico on stackoverflow
	// http://stackoverflow.com/questions/5012886/determining-the-available-amount-of-ram-on-an-ios-device
	
	mach_port_t host_port;
	mach_msg_type_number_t host_size;
	vm_size_t pagesize;
	
	host_port = mach_host_self();
	host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
	host_page_size(host_port, &pagesize);
	
	vm_statistics_data_t vm_stat;
	
	if (host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size) != KERN_SUCCESS) {
		return @(-1);
	}
	
	return @(vm_stat.free_count * pagesize);
}

- (NSNumber*)dm_MemoryUsed
{
	// This code is thanks to Nico on stackoverflow
	// http://stackoverflow.com/questions/5012886/determining-the-available-amount-of-ram-on-an-ios-device
	
	mach_port_t host_port;
	mach_msg_type_number_t host_size;
	vm_size_t pagesize;
	
	host_port = mach_host_self();
	host_size = sizeof(vm_statistics_data_t) / sizeof(integer_t);
	host_page_size(host_port, &pagesize);
	
	vm_statistics_data_t vm_stat;
	
	if (host_statistics(host_port, HOST_VM_INFO, (host_info_t)&vm_stat, &host_size) != KERN_SUCCESS) {
		return @(-1);
	}
	
	return @((vm_stat.active_count + vm_stat.inactive_count + vm_stat.wire_count) * pagesize);
}

- (NSNumber*)dm_DiskCapacity
{
	// This code is thanks to Code.Warrior on stackoverflow
	// http://stackoverflow.com/questions/5712527/how-to-detect-total-available-free-disk-space-on-the-iphone-ipad-device
	
	uint64_t totalSpace = 0;
	NSError *error = nil;
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSDictionary *dictionary = [[NSFileManager defaultManager] attributesOfFileSystemForPath:[paths lastObject] error: &error];
	
	if (!dictionary)
	{
		return @(-1);
	}
	
	NSNumber *fileSystemSizeInBytes = [dictionary objectForKey: NSFileSystemSize];
	totalSpace = [fileSystemSizeInBytes unsignedLongLongValue];
	return @(totalSpace);
}

- (NSNumber*)dm_DiskSpaceFree
{
	// This code is thanks to Code.Warrior on stackoverflow
	// http://stackoverflow.com/questions/5712527/how-to-detect-total-available-free-disk-space-on-the-iphone-ipad-device
	
	uint64_t totalFreeSpace = 0;
	NSError *error = nil;
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSDictionary *dictionary = [[NSFileManager defaultManager] attributesOfFileSystemForPath:[paths lastObject] error: &error];
	
	if (!dictionary)
	{
		return @(-1);
	}
	
	NSNumber *freeFileSystemSizeInBytes = [dictionary objectForKey:NSFileSystemFreeSize];
	totalFreeSpace = [freeFileSystemSizeInBytes unsignedLongLongValue];
	return @(totalFreeSpace);
}

- (NSString*)dm_ModelCode
{
	struct utsname systemInfo;
	uname(&systemInfo);
	
	return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

@end
