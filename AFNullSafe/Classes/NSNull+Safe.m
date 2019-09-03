//
//  NSNull+Safe.m
//  AFNullSafe
//
//  Created by maf on 2019/9/3.
//

/**
 重写2方法 或 重写3、4方法组合 避免对NSNull对象调用未实现方法时崩溃。
 */
@implementation NSNull (Safe)

//1 判断是否实现方法
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//
//}


//2 1中返回NO 再次寻找的是一个能响应该方法的对象。如果返回一个能响应该消息的对象，那么消息会转发到该对象那里 如果返回nil则进行下一步
- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSArray *jsonObjs = @[@"",@0,[@[] mutableCopy],[@{} mutableCopy],[NSDate date],[NSData new]];
    for (id jsonObj in jsonObjs) {
        if ([jsonObj respondsToSelector:aSelector]) {
            NSLog(@"NULL 期望对象的类是_%@",[jsonObj class]);
            return jsonObj;
        }
    }
    return [super forwardingTargetForSelector:aSelector];
}


//3 当forwardingTargetForSelector :返回nil时，会进行这一步，生成方法签名，如果方法签名为nil直接调用doesNotRecognizeSelector:返回异常，如果正常生成方法签名，则进行最后一步。
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
//    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
//    if (!signature)
//    {
//        for (Class someClass in @[
//                                  [NSMutableArray class],
//                                  [NSMutableDictionary class],
//                                  [NSMutableString class],
//                                  [NSNumber class],
//                                  [NSDate class],
//                                  [NSData class]
//                                  ])
//        {
//            @try
//            {
//                if ([someClass instancesRespondToSelector:aSelector])
//                {
//                    signature = [someClass instanceMethodSignatureForSelector:aSelector];
//                    break;
//                }
//            }
//            @catch (__unused NSException *unused) {}
//        }
//    }
//    return signature;
//}



/**4 到这这一步，我们还可以通过NSInvocation处理 直接转换为nil处理*/
//- (void)forwardInvocation:(NSInvocation *)anInvocation {
//    anInvocation.target = nil;
//    [anInvocation invoke];
//}

@end
