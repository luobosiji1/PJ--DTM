


/*
 * Creating a model based on the requirements
 * Note: model attribute types and dictionaries
 */
@interface Person : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSNumber *age;
@property(nonatomic,strong)NSArray *height;
@property(nonatomic,strong)NSDictionary *dog;
@property(nonatomic,strong)NSArray *book;

NSDictionary *dict =@{@"name":@"zhangsan",
                      @"age":@18,
                      @"height":@[
                              @{@"name":@"haha",@"name1":@"xixi"},
                              @{@"name":@"haha",@"name1":@"xixi"}
                              ],
                      @"dog": @{
                              @"name":@"wangcai",
                              @"age" : @2,
                              @"boon":@{
                                      @"name":@"gutou"
                                      
                                      }
                              },
                      @"book":@[
                              
                              @{@"name":@"qq",@"pirce":@"12"},
                              @{@"name":@"xx",@"pirce":@{
                                        
                                        @"nishabusha": @"sha"
                                        
                                        }}
                              
                              
                              ]
                      
                      
                      };


//Access model
Person *person = [Person objectWithDict:dict];

Book *book = [Book objectWithDict:(NSDictionary *)person.book[1]];

Dog *dog =[Dog objectWithDict:person.dog];

