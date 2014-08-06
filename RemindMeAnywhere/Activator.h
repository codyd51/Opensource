@interface LAEvent : NSObject <NSCoding>

+ (instancetype)eventWithName:(NSString *)name;
+ (instancetype)eventWithName:(NSString *)name mode:(NSString *)mode;
- (instancetype)initWithName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name mode:(NSString *)mode;

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *mode;
@property (nonatomic, getter=isHandled) BOOL handled;
@property (nonatomic, copy) NSDictionary *userInfo;

@end

@interface LAActivator : NSObject

+ (instancetype)sharedInstance;

- (void)registerListener:(id)listener forName:(NSString *)name; //Only available in SpringBoard
- (void)unregisterListenerWithName:(NSString *)name; //Only available in SpringBoard

@end

@protocol LAListener <NSObject>

@optional
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event;

@end