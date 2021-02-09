#import <Cocoa/Cocoa.h>

@class Theme;

NS_ASSUME_NONNULL_BEGIN

@interface Storage : NSTextStorage

@property(nonatomic, strong, readonly) NSMutableAttributedString *backingStore;
@property(nonatomic, strong, readonly) Theme *theme;
@property(nonatomic, assign) BOOL skipRestyling;

- (void)refreshStyleWithMarkdownEnabled:(BOOL)markdownEnabled NS_SWIFT_NAME(refreshStyle(markdownEnabled:));

@end

NS_ASSUME_NONNULL_END
