//
//  ViewController.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "ViewController.h"
#import <LBBlurredImage/UIImageView+LBBlurredImage.h>

//Mantle Ex1
#import "ChoosyAppInfo.h"
#import "MTLJSONAdapter.h"
////////////////

//=============NSCoder
#import "TestCoder.h"
//=============NSCopying
#import "BankAccount.h"
//====================

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self jsonResponse];
    [self To_save_an_instance_of_the_Foo_object_to_a_file];
    [self And_to_load_it_again];
    // Do any additional setup after loading the view, typically from a nib.
    // 1
    self.screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    UIImage *background = [UIImage imageNamed:@"bg"];
    
    // 2
    self.backgroundImageView = [[UIImageView alloc] initWithImage:background];
    self.backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.backgroundImageView];
    
    // 3
    self.blurredImageView = [[UIImageView alloc] init];
    self.blurredImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.blurredImageView.alpha = 0;
    [self.blurredImageView setImageToBlur:background blurRadius:10 completionBlock:nil];
    [self.view addSubview:self.blurredImageView];
    
    // 4
    self.tableView = [[UITableView alloc] init];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorColor = [UIColor colorWithWhite:1 alpha:0.2];
    self.tableView.pagingEnabled = YES;
    [self.view addSubview:self.tableView];
    
    //===============---------
    // 1
    CGRect headerFrame = [UIScreen mainScreen].bounds;
    // 2
    CGFloat inset = 20;
    // 3
    CGFloat temperatureHeight = 110;
    CGFloat hiloHeight = 40;
    CGFloat iconHeight = 30;
    // 4
    CGRect hiloFrame = CGRectMake(inset,
                                  headerFrame.size.height - hiloHeight,
                                  headerFrame.size.width - (2 * inset),
                                  hiloHeight);
    
    CGRect temperatureFrame = CGRectMake(inset,
                                         headerFrame.size.height - (temperatureHeight + hiloHeight),
                                         headerFrame.size.width - (2 * inset),
                                         temperatureHeight);
    
    CGRect iconFrame = CGRectMake(inset,
                                  temperatureFrame.origin.y - iconHeight,
                                  iconHeight,
                                  iconHeight);
    // 5
    CGRect conditionsFrame = iconFrame;
    conditionsFrame.size.width = self.view.bounds.size.width - (((2 * inset) + iconHeight) + 10);
    conditionsFrame.origin.x = iconFrame.origin.x + (iconHeight + 10);
    
    //===============---------
    
    
    //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    // 1
    UIView *header = [[UIView alloc] initWithFrame:headerFrame];
    header.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = header;
    
    // 2
    // bottom left
    UILabel *temperatureLabel = [[UILabel alloc] initWithFrame:temperatureFrame];
    temperatureLabel.backgroundColor = [UIColor clearColor];
    temperatureLabel.textColor = [UIColor whiteColor];
    temperatureLabel.text = @"0°";
    temperatureLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:120];
    [header addSubview:temperatureLabel];
    
    // bottom left
    UILabel *hiloLabel = [[UILabel alloc] initWithFrame:hiloFrame];
    hiloLabel.backgroundColor = [UIColor clearColor];
    hiloLabel.textColor = [UIColor whiteColor];
    hiloLabel.text = @"0° / 0°";
    hiloLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:28];
    [header addSubview:hiloLabel];
    
    // top
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 30)];
    cityLabel.backgroundColor = [UIColor clearColor];
    cityLabel.textColor = [UIColor whiteColor];
    cityLabel.text = @"Loading...";
    cityLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    cityLabel.textAlignment = NSTextAlignmentCenter;
    [header addSubview:cityLabel];
    
    UILabel *conditionsLabel = [[UILabel alloc] initWithFrame:conditionsFrame];
    conditionsLabel.backgroundColor = [UIColor clearColor];
    conditionsLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:18];
    conditionsLabel.textColor = [UIColor whiteColor];
    [header addSubview:conditionsLabel];
    
    // 3
    // bottom left
    UIImageView *iconView = [[UIImageView alloc] initWithFrame:iconFrame];
    iconView.contentMode = UIViewContentModeScaleAspectFit;
    iconView.backgroundColor = [UIColor clearColor];
    [header addSubview:iconView];
    //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
}


// 1
#pragma mark - UITableViewDataSource

// 2
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // TODO: Return count of forecast
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (! cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    // 3
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    
    // TODO: Setup the cell
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Determine cell height based on screen
    return 44;
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect bounds = self.view.bounds;
    
    self.backgroundImageView.frame = bounds;
    self.blurredImageView.frame = bounds;
    self.tableView.frame = bounds;
}

//==========================================================

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (UIStatusBarStyle)preferredStatusBarStyle {
//    return UIStatusBarStyleLightContent;
//}

//=====================================================================================//
////////////////////////////////Mantle Ex1
-(void)testJson
{
    /*
    // Read in and store as string
    //NSString *file = [[NSBundle mainBundle] pathForResource:@"document" ofType:@"json"];
    //NSString *str = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:NULL];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"document" ofType:@"json"];
    
    //création d'un string avec le contenu du JSON
    NSString *myJSON = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    
    //Parsage du JSON à l'aide du framework importé
    //NSDictionary *json    = [myJSON JSONValue];
    NSError *error = nil;
    
    NSData *jsonData = [NSData dataWithContentsOfFile:myJSON];
    //NSArray *statuses = [jsonData ];
    
//    NSArray *resultDict = [NSJSONSerialization JSONObjectWithData: jsonData options: NSJSONReadingMutableContainers error: &error];
    
    NSMutableArray *jsonDict = (NSMutableArray *)[NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    
    NSLog(@"Parse Dict:%@",jsonDict);
     */
    
    //=-=-=-
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"document" ofType:@"json"];
    //NSString *filePath = [self getJsonFilePath:jsonFileName];
    NSError *error = nil;
    NSMutableArray *jsonArray ;
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:filePath];
    
    
    if(jsonData == nil)
    {
        
    }else
    {
        jsonArray = (NSMutableArray *)[NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    }
    NSLog(@"Parse Dict:%@",jsonArray);
    
    //NSArray *rtara = [self deserializeAppInfosFromJSON:jsonArray];
    //NSLog(@"Mantle Parse:%@",rtara);
    
    //=======
    /*
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"example" ofType:@"json"];
    
    // Load the file into an NSData object called JSONData
    
    NSError *error = nil;
    
    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    // Create an Objective-C object from JSON Data
    
    id JSONObject = [NSJSONSerialization
                     JSONObjectWithData:JSONData
                     options:NSJSONReadingAllowFragments
                     error:&error];
     */
}

//+ (id)dataFromJSONFileNamed:(NSString *)fileName
//{
//    NSString *resource = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
//    
//   // NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    //NSString *resource = [bundle pathForResource:fileName ofType:@"json"];
//    
//    if (NSClassFromString(@"NSJSONSerialization"))
//    {
//        NSInputStream *inputStream = [NSInputStream inputStreamWithFileAtPath:resource];
//        [inputStream open];
//        
//        return [NSJSONSerialization JSONObjectWithStream:inputStream options:0 error:nil];
//    } else {
//        NSData *jsonData = [NSData dataWithContentsOfFile:resource];
//        return [jsonData objectFromJSONData];
//    }
//}

- (NSArray *)deserializeAppInfosFromJSON:(NSArray *)appInfosJSON
{
    NSError *error;
    NSArray *appInfos = [MTLJSONAdapter modelsOfClass:[ChoosyAppInfo class] fromJSONArray:appInfosJSON error:&error];
    if (error) {
        NSLog(@"Couldn't convert app infos JSON to ChoosyAppInfo models: %@", error);
        return nil;
    }
    
    return appInfos;
}

//+ (NSArray *)deserializeAppInfosFromNSData:(NSData *)jsonFormatData
//{
//    NSError *error;
//    NSArray *appInfosJSON = [NSJSONSerialization JSONObjectWithData:jsonFormatData options:0 error:&error];
//    if (error) {
//        NSLog(@"Couldn't deserealize app info data into JSON from NSData: %@", error);
//        return nil;
//    }
//    
//    return [ChoosySerialization deserializeAppInfosFromJSON:appInfosJSON];
//}

//=====================================================================================//

////////////////////////////////////////////////////////////////
//---- XCode has a built-in in support for unit testing ----///
//////////////////////////////////////////////////////////////


- (NSString *)reverseString:(NSString *)stringToReverse
{
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[stringToReverse length]];
    
    [stringToReverse enumerateSubstringsInRange:NSMakeRange(0,[stringToReverse length])
                                        options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                                     usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                         [reversedString appendString:substring];
                                     }];
    return reversedString;
}

- (void)doSomethingThatTakesSomeTimesWithCompletionBlock:(void (^)(NSString *result))completion
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:2.0f];
        dispatch_sync(dispatch_get_main_queue(), ^{
            completion(@"result");
        });
    });
}


//=====================================================================================//
#pragma mark - Object Serialization using NSCoder and NSCoding

/*Note:-
  high-performance way to save data files without all the boilerplate and complexity of other more sophisticated data persistence methods such as Core Data or SQLite.
 
 NSCoding also takes care of all those nasty problems like recursion and circular references inside your objects, so whether you’re saving a single object or a complex object hierarchy, It Just Works
*/
-(void)To_save_an_instance_of_the_Foo_object_to_a_file
{
    TestCoder *someFoo = [[TestCoder alloc] init];
    someFoo.property1=77;
    someFoo.property2=NO;
    someFoo.property3=@"Rama";
    //[NSKeyedArchiver archiveRootObject:someFoo toFile:someFile];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:someFoo];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"books"];
}

-(void)And_to_load_it_again
{
    //TestCoder *someFoo = [NSKeyedUnarchiver unarchiveObjectWithFile:someFile];
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"books"];
    NSArray *books = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    TestCoder *testCo = (TestCoder *)books;
    NSLog(@"Retrived Data1:%ld",(long)testCo.property1);
    NSLog(@"Retrived Data2:%d",(int)testCo.property2);
    NSLog(@"Retrived Data3:%@",testCo.property3);
}


#pragma mark - 

-(void)test
{
    BankAccount *account1;
    BankAccount *account2;
    
    account1 = [BankAccount alloc];
    
    account1 = [account1 init];
    
    [account1 setAccountBalance: 1500.53];
    [account1 setAccountNumber: 34543212];
    
    [account1 displayAccountInfo];
    
    account2 = [account1 copy];
    
    [account2 displayAccountInfo];
}

#pragma mark - JsonResponse
-(void)jsonResponse
{
    //=-=-=-
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"document" ofType:@"json"];
    //NSString *filePath = [self getJsonFilePath:jsonFileName];
    NSError *error = nil;
    NSMutableArray *jsonArray ;
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:filePath];
    
    
    if(jsonData == nil)
    {
        
    }else
    {
        jsonArray = (NSMutableArray *)[NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
        //===========
        //[self serializeAppInfos:jsonArray];
        //===========
        
    }
    NSLog(@"Parse Dict:%@",jsonArray);
    
    //=-=-=-
    
}
#pragma mark - serialize
// Use iOS framework to convert JSON to NSData
//+ (NSData *)serializeAppInfosToNSData:(NSArray *)appInfos
//{
//    NSArray *appInfosJSON = [MTLJSONAdapter JSONArrayFromModels:appInfos];
//    
//    NSError *error;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:appInfosJSON options:0 error:&error];
//    if (error) {
//        NSLog(@"Couldn't turn app info JSON into NSData. JSON: %@, \n\n Error: %@", appInfosJSON, error);
//        return nil;
//    }
//    
//    return jsonData;
//}

- (void)serializeAppInfos:(NSArray *)appInfos
{
    NSError *error;
    NSArray *appInfosJSON = [MTLJSONAdapter JSONArrayFromModels:appInfos error:&error];
    
    //ChoosyAppInfo *employee = [MTLJSONAdapter modelOfClass:ChoosyAppInfo.class fr:responseObject error:&error];
    NSArray *customers = [MTLJSONAdapter modelsOfClass:ChoosyAppInfo.class fromJSONArray:appInfosJSON error:&error];
    //[self deserializeAppInfosFromJSON:appInfosJSON];
}

#pragma mark - deserialize

//- (NSArray *)deserializeAppInfosFromJSON:(NSArray *)appInfosJSON
//{
//    NSError *error;
//    NSArray *appInfos = [MTLJSONAdapter modelsOfClass:[ChoosyAppInfo class] fromJSONArray:appInfosJSON error:&error];
//    
//    if (error) {
//        NSLog(@"Couldn't convert app infos JSON to ChoosyAppInfo models: %@", error);
//        return nil;
//    }
//    
//    return appInfos;
//}

@end
