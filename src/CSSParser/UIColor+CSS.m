//
//  UIColor+CSS.m
//  Wilde
//
//  Created by Thomas Davie on 30/12/2011.
//  Copyright (c) 2011 Thomas Davie. All rights reserved.
//

#import "UIColor+CSS.h"

@implementation UIColor (CSS)

static NSDictionary *colors = nil;

+ (id)colorWithCSSName:(NSString *)colorName
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        colors = [NSDictionary dictionaryWithObjectsAndKeys:
                   [UIColor colorWithRed:240.0f / 255.0f green:248.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"aliceblue"           ,
                   [UIColor colorWithRed:250.0f / 255.0f green:235.0f / 255.0f blue:215.0f / 255.0f alpha:1.0f], @"antiquewhite"        ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:255.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"aqua"                ,
                   [UIColor colorWithRed:127.0f / 255.0f green:255.0f / 255.0f blue:212.0f / 255.0f alpha:1.0f], @"aquamarine"          ,
                   [UIColor colorWithRed:240.0f / 255.0f green:255.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"azure"               ,
                   [UIColor colorWithRed:245.0f / 255.0f green:245.0f / 255.0f blue:220.0f / 255.0f alpha:1.0f], @"beige"               ,
                   [UIColor colorWithRed:255.0f / 255.0f green:228.0f / 255.0f blue:196.0f / 255.0f alpha:1.0f], @"bisque"              ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:  0.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"black"               ,
                   [UIColor colorWithRed:255.0f / 255.0f green:235.0f / 255.0f blue:205.0f / 255.0f alpha:1.0f], @"blanchedalmond"      ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:  0.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"blue"                ,
                   [UIColor colorWithRed:138.0f / 255.0f green: 43.0f / 255.0f blue:226.0f / 255.0f alpha:1.0f], @"blueviolet"          ,
                   [UIColor colorWithRed:165.0f / 255.0f green: 42.0f / 255.0f blue: 42.0f / 255.0f alpha:1.0f], @"brown"               ,
                   [UIColor colorWithRed:222.0f / 255.0f green:184.0f / 255.0f blue:135.0f / 255.0f alpha:1.0f], @"burlywood"           ,
                   [UIColor colorWithRed: 95.0f / 255.0f green:158.0f / 255.0f blue:160.0f / 255.0f alpha:1.0f], @"cadetblue"           ,
                   [UIColor colorWithRed:127.0f / 255.0f green:255.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"chartreuse"          ,
                   [UIColor colorWithRed:210.0f / 255.0f green:105.0f / 255.0f blue: 30.0f / 255.0f alpha:1.0f], @"chocolate"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:127.0f / 255.0f blue: 80.0f / 255.0f alpha:1.0f], @"coral"               ,
                   [UIColor colorWithRed:100.0f / 255.0f green:149.0f / 255.0f blue:237.0f / 255.0f alpha:1.0f], @"cornflowerblue"      ,
                   [UIColor colorWithRed:255.0f / 255.0f green:248.0f / 255.0f blue:220.0f / 255.0f alpha:1.0f], @"cornsilk"            ,
                   [UIColor colorWithRed:220.0f / 255.0f green: 20.0f / 255.0f blue: 60.0f / 255.0f alpha:1.0f], @"crimson"             ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:255.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"cyan"                ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:  0.0f / 255.0f blue:139.0f / 255.0f alpha:1.0f], @"darkblue"            ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:139.0f / 255.0f blue:139.0f / 255.0f alpha:1.0f], @"darkcyan"            ,
                   [UIColor colorWithRed:184.0f / 255.0f green:134.0f / 255.0f blue: 11.0f / 255.0f alpha:1.0f], @"darkgoldenrod"       ,
                   [UIColor colorWithRed:169.0f / 255.0f green:169.0f / 255.0f blue:169.0f / 255.0f alpha:1.0f], @"darkgray"            ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:100.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"darkgreen"           ,
                   [UIColor colorWithRed:169.0f / 255.0f green:169.0f / 255.0f blue:169.0f / 255.0f alpha:1.0f], @"darkgrey"            ,
                   [UIColor colorWithRed:189.0f / 255.0f green:183.0f / 255.0f blue:107.0f / 255.0f alpha:1.0f], @"darkkhaki"           ,
                   [UIColor colorWithRed:139.0f / 255.0f green:  0.0f / 255.0f blue:139.0f / 255.0f alpha:1.0f], @"darkmagenta"         ,
                   [UIColor colorWithRed: 85.0f / 255.0f green:107.0f / 255.0f blue: 47.0f / 255.0f alpha:1.0f], @"darkolivegreen"      ,
                   [UIColor colorWithRed:255.0f / 255.0f green:140.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"darkorange"          ,
                   [UIColor colorWithRed:153.0f / 255.0f green: 50.0f / 255.0f blue:204.0f / 255.0f alpha:1.0f], @"darkorchid"          ,
                   [UIColor colorWithRed:139.0f / 255.0f green:  0.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"darkred"             ,
                   [UIColor colorWithRed:233.0f / 255.0f green:150.0f / 255.0f blue:122.0f / 255.0f alpha:1.0f], @"darksalmon"          ,
                   [UIColor colorWithRed:143.0f / 255.0f green:188.0f / 255.0f blue:143.0f / 255.0f alpha:1.0f], @"darkseagreen"        ,
                   [UIColor colorWithRed: 72.0f / 255.0f green: 61.0f / 255.0f blue:139.0f / 255.0f alpha:1.0f], @"darkslateblue"       ,
                   [UIColor colorWithRed: 47.0f / 255.0f green: 79.0f / 255.0f blue: 79.0f / 255.0f alpha:1.0f], @"darkslategray"       ,
                   [UIColor colorWithRed: 47.0f / 255.0f green: 79.0f / 255.0f blue: 79.0f / 255.0f alpha:1.0f], @"darkslategrey"       ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:206.0f / 255.0f blue:209.0f / 255.0f alpha:1.0f], @"darkturquoise"       ,
                   [UIColor colorWithRed:148.0f / 255.0f green:  0.0f / 255.0f blue:211.0f / 255.0f alpha:1.0f], @"darkviolet"          ,
                   [UIColor colorWithRed:255.0f / 255.0f green: 20.0f / 255.0f blue:147.0f / 255.0f alpha:1.0f], @"deeppink"            ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:191.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"deepskyblue"         ,
                   [UIColor colorWithRed:105.0f / 255.0f green:105.0f / 255.0f blue:105.0f / 255.0f alpha:1.0f], @"dimgray"             ,
                   [UIColor colorWithRed:105.0f / 255.0f green:105.0f / 255.0f blue:105.0f / 255.0f alpha:1.0f], @"dimgrey"             ,
                   [UIColor colorWithRed: 30.0f / 255.0f green:144.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"dodgerblue"          ,
                   [UIColor colorWithRed:178.0f / 255.0f green: 34.0f / 255.0f blue: 34.0f / 255.0f alpha:1.0f], @"firebrick"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:250.0f / 255.0f blue:240.0f / 255.0f alpha:1.0f], @"floralwhite"         ,
                   [UIColor colorWithRed: 34.0f / 255.0f green:139.0f / 255.0f blue: 34.0f / 255.0f alpha:1.0f], @"forestgreen"         ,
                   [UIColor colorWithRed:255.0f / 255.0f green:  0.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"fuchsia"             ,
                   [UIColor colorWithRed:220.0f / 255.0f green:220.0f / 255.0f blue:220.0f / 255.0f alpha:1.0f], @"gainsboro"           ,
                   [UIColor colorWithRed:248.0f / 255.0f green:248.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"ghostwhite"          ,
                   [UIColor colorWithRed:255.0f / 255.0f green:215.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"gold"                ,
                   [UIColor colorWithRed:218.0f / 255.0f green:165.0f / 255.0f blue: 32.0f / 255.0f alpha:1.0f], @"goldenrod"           ,
                   [UIColor colorWithRed:128.0f / 255.0f green:128.0f / 255.0f blue:128.0f / 255.0f alpha:1.0f], @"gray"                ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:128.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"green"               ,
                   [UIColor colorWithRed:173.0f / 255.0f green:255.0f / 255.0f blue: 47.0f / 255.0f alpha:1.0f], @"greenyellow"         ,
                   [UIColor colorWithRed:128.0f / 255.0f green:128.0f / 255.0f blue:128.0f / 255.0f alpha:1.0f], @"grey"                ,
                   [UIColor colorWithRed:240.0f / 255.0f green:255.0f / 255.0f blue:240.0f / 255.0f alpha:1.0f], @"honeydew"            ,
                   [UIColor colorWithRed:255.0f / 255.0f green:105.0f / 255.0f blue:180.0f / 255.0f alpha:1.0f], @"hotpink"             ,
                   [UIColor colorWithRed:205.0f / 255.0f green: 92.0f / 255.0f blue: 92.0f / 255.0f alpha:1.0f], @"indianred"           ,
                   [UIColor colorWithRed: 75.0f / 255.0f green:  0.0f / 255.0f blue:130.0f / 255.0f alpha:1.0f], @"indigo"              ,
                   [UIColor colorWithRed:255.0f / 255.0f green:255.0f / 255.0f blue:240.0f / 255.0f alpha:1.0f], @"ivory"               ,
                   [UIColor colorWithRed:240.0f / 255.0f green:230.0f / 255.0f blue:140.0f / 255.0f alpha:1.0f], @"khaki"               ,
                   [UIColor colorWithRed:230.0f / 255.0f green:230.0f / 255.0f blue:250.0f / 255.0f alpha:1.0f], @"lavender"            ,
                   [UIColor colorWithRed:255.0f / 255.0f green:240.0f / 255.0f blue:245.0f / 255.0f alpha:1.0f], @"lavenderblush"       ,
                   [UIColor colorWithRed:124.0f / 255.0f green:252.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"lawngreen"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:250.0f / 255.0f blue:205.0f / 255.0f alpha:1.0f], @"lemonchiffon"        ,
                   [UIColor colorWithRed:173.0f / 255.0f green:216.0f / 255.0f blue:230.0f / 255.0f alpha:1.0f], @"lightblue"           ,
                   [UIColor colorWithRed:240.0f / 255.0f green:128.0f / 255.0f blue:128.0f / 255.0f alpha:1.0f], @"lightcyan"           ,
                   [UIColor colorWithRed:224.0f / 255.0f green:255.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"lightcoral"          ,
                   [UIColor colorWithRed:250.0f / 255.0f green:250.0f / 255.0f blue:210.0f / 255.0f alpha:1.0f], @"lightgoldenrodyellow",
                   [UIColor colorWithRed:211.0f / 255.0f green:211.0f / 255.0f blue:211.0f / 255.0f alpha:1.0f], @"lightgray"           ,
                   [UIColor colorWithRed:144.0f / 255.0f green:238.0f / 255.0f blue:144.0f / 255.0f alpha:1.0f], @"lightgreen"          ,
                   [UIColor colorWithRed:211.0f / 255.0f green:211.0f / 255.0f blue:211.0f / 255.0f alpha:1.0f], @"lightgrey"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:182.0f / 255.0f blue:193.0f / 255.0f alpha:1.0f], @"lightpink"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:160.0f / 255.0f blue:122.0f / 255.0f alpha:1.0f], @"lightsalmon"         ,
                   [UIColor colorWithRed: 32.0f / 255.0f green:178.0f / 255.0f blue:170.0f / 255.0f alpha:1.0f], @"lightseagreen"       ,
                   [UIColor colorWithRed:135.0f / 255.0f green:206.0f / 255.0f blue:250.0f / 255.0f alpha:1.0f], @"lightskyblue"        ,
                   [UIColor colorWithRed:119.0f / 255.0f green:136.0f / 255.0f blue:153.0f / 255.0f alpha:1.0f], @"lightslategray"      ,
                   [UIColor colorWithRed:119.0f / 255.0f green:136.0f / 255.0f blue:153.0f / 255.0f alpha:1.0f], @"lightslategrey"      ,
                   [UIColor colorWithRed:176.0f / 255.0f green:196.0f / 255.0f blue:222.0f / 255.0f alpha:1.0f], @"lightsteelblue"      ,
                   [UIColor colorWithRed:255.0f / 255.0f green:255.0f / 255.0f blue:224.0f / 255.0f alpha:1.0f], @"lightyellow"         ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:255.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"lime"                ,
                   [UIColor colorWithRed: 50.0f / 255.0f green:205.0f / 255.0f blue: 50.0f / 255.0f alpha:1.0f], @"limegreen"           ,
                   [UIColor colorWithRed:250.0f / 255.0f green:240.0f / 255.0f blue:230.0f / 255.0f alpha:1.0f], @"linen"               ,
                   [UIColor colorWithRed:255.0f / 255.0f green:  0.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"magenta"             ,
                   [UIColor colorWithRed:128.0f / 255.0f green:  0.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"maroon"              ,
                   [UIColor colorWithRed:102.0f / 255.0f green:205.0f / 255.0f blue:170.0f / 255.0f alpha:1.0f], @"mediumaquamarine"    ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:  0.0f / 255.0f blue:205.0f / 255.0f alpha:1.0f], @"mediumblue"          ,
                   [UIColor colorWithRed:186.0f / 255.0f green: 85.0f / 255.0f blue:211.0f / 255.0f alpha:1.0f], @"mediumorchid"        ,
                   [UIColor colorWithRed:147.0f / 255.0f green:112.0f / 255.0f blue:219.0f / 255.0f alpha:1.0f], @"mediumpurple"        ,
                   [UIColor colorWithRed: 60.0f / 255.0f green:179.0f / 255.0f blue:113.0f / 255.0f alpha:1.0f], @"mediumseagreen"      ,
                   [UIColor colorWithRed:123.0f / 255.0f green:104.0f / 255.0f blue:238.0f / 255.0f alpha:1.0f], @"mediumslateblue"     ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:250.0f / 255.0f blue:154.0f / 255.0f alpha:1.0f], @"mediumspringgreen"   ,
                   [UIColor colorWithRed: 72.0f / 255.0f green:209.0f / 255.0f blue:204.0f / 255.0f alpha:1.0f], @"mediumturquoise"     ,
                   [UIColor colorWithRed:199.0f / 255.0f green: 21.0f / 255.0f blue:133.0f / 255.0f alpha:1.0f], @"mediumvioletred"     ,
                   [UIColor colorWithRed: 25.0f / 255.0f green: 25.0f / 255.0f blue:112.0f / 255.0f alpha:1.0f], @"midnightblue"        ,
                   [UIColor colorWithRed:245.0f / 255.0f green:255.0f / 255.0f blue:250.0f / 255.0f alpha:1.0f], @"mintcream"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:228.0f / 255.0f blue:225.0f / 255.0f alpha:1.0f], @"mistyrose"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:228.0f / 255.0f blue:181.0f / 255.0f alpha:1.0f], @"moccasin"            ,
                   [UIColor colorWithRed:255.0f / 255.0f green:222.0f / 255.0f blue:173.0f / 255.0f alpha:1.0f], @"navajowhite"         ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:  0.0f / 255.0f blue:128.0f / 255.0f alpha:1.0f], @"navy"                ,
                   [UIColor colorWithRed:253.0f / 255.0f green:245.0f / 255.0f blue:230.0f / 255.0f alpha:1.0f], @"oldlace"             ,
                   [UIColor colorWithRed:128.0f / 255.0f green:128.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"olive"               ,
                   [UIColor colorWithRed:107.0f / 255.0f green:142.0f / 255.0f blue: 35.0f / 255.0f alpha:1.0f], @"olivedrab"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:165.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"orange"              ,
                   [UIColor colorWithRed:255.0f / 255.0f green: 69.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"orangered"           ,
                   [UIColor colorWithRed:218.0f / 255.0f green:112.0f / 255.0f blue:214.0f / 255.0f alpha:1.0f], @"orchid"              ,
                   [UIColor colorWithRed:238.0f / 255.0f green:232.0f / 255.0f blue:170.0f / 255.0f alpha:1.0f], @"palegoldenrod"       ,
                   [UIColor colorWithRed:152.0f / 255.0f green:251.0f / 255.0f blue:152.0f / 255.0f alpha:1.0f], @"palegreen"           ,
                   [UIColor colorWithRed:175.0f / 255.0f green:238.0f / 255.0f blue:238.0f / 255.0f alpha:1.0f], @"paleturquoise"       ,
                   [UIColor colorWithRed:219.0f / 255.0f green:112.0f / 255.0f blue:147.0f / 255.0f alpha:1.0f], @"palevioletred"       ,
                   [UIColor colorWithRed:255.0f / 255.0f green:239.0f / 255.0f blue:213.0f / 255.0f alpha:1.0f], @"papayawhip"          ,
                   [UIColor colorWithRed:255.0f / 255.0f green:218.0f / 255.0f blue:185.0f / 255.0f alpha:1.0f], @"peachpuff"           ,
                   [UIColor colorWithRed:205.0f / 255.0f green:133.0f / 255.0f blue: 63.0f / 255.0f alpha:1.0f], @"peru"                ,
                   [UIColor colorWithRed:255.0f / 255.0f green:192.0f / 255.0f blue:203.0f / 255.0f alpha:1.0f], @"pink"                ,
                   [UIColor colorWithRed:221.0f / 255.0f green:160.0f / 255.0f blue:221.0f / 255.0f alpha:1.0f], @"plum"                ,
                   [UIColor colorWithRed:176.0f / 255.0f green:224.0f / 255.0f blue:230.0f / 255.0f alpha:1.0f], @"powderblue"          ,
                   [UIColor colorWithRed:128.0f / 255.0f green:  0.0f / 255.0f blue:128.0f / 255.0f alpha:1.0f], @"purple"              ,
                   [UIColor colorWithRed:255.0f / 255.0f green:  0.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"red"                 ,
                   [UIColor colorWithRed:188.0f / 255.0f green:143.0f / 255.0f blue:143.0f / 255.0f alpha:1.0f], @"rosybrown"           ,
                   [UIColor colorWithRed: 65.0f / 255.0f green:105.0f / 255.0f blue:225.0f / 255.0f alpha:1.0f], @"royalblue"           ,
                   [UIColor colorWithRed:139.0f / 255.0f green: 69.0f / 255.0f blue: 19.0f / 255.0f alpha:1.0f], @"saddlebrown"         ,
                   [UIColor colorWithRed:250.0f / 255.0f green:128.0f / 255.0f blue:114.0f / 255.0f alpha:1.0f], @"salmon"              ,
                   [UIColor colorWithRed:244.0f / 255.0f green:164.0f / 255.0f blue: 96.0f / 255.0f alpha:1.0f], @"sandybrown"          ,
                   [UIColor colorWithRed: 46.0f / 255.0f green:139.0f / 255.0f blue: 87.0f / 255.0f alpha:1.0f], @"seagreen"            ,
                   [UIColor colorWithRed:255.0f / 255.0f green:245.0f / 255.0f blue:238.0f / 255.0f alpha:1.0f], @"seashell"            ,
                   [UIColor colorWithRed:160.0f / 255.0f green: 82.0f / 255.0f blue: 45.0f / 255.0f alpha:1.0f], @"sienna"              ,
                   [UIColor colorWithRed:192.0f / 255.0f green:192.0f / 255.0f blue:192.0f / 255.0f alpha:1.0f], @"silver"              ,
                   [UIColor colorWithRed:135.0f / 255.0f green:206.0f / 255.0f blue:235.0f / 255.0f alpha:1.0f], @"skyblue"             ,
                   [UIColor colorWithRed:106.0f / 255.0f green: 90.0f / 255.0f blue:205.0f / 255.0f alpha:1.0f], @"slateblue"           ,
                   [UIColor colorWithRed:112.0f / 255.0f green:128.0f / 255.0f blue:144.0f / 255.0f alpha:1.0f], @"slategray"           ,
                   [UIColor colorWithRed:112.0f / 255.0f green:128.0f / 255.0f blue:144.0f / 255.0f alpha:1.0f], @"slategrey"           ,
                   [UIColor colorWithRed:255.0f / 255.0f green:250.0f / 255.0f blue:250.0f / 255.0f alpha:1.0f], @"snow"                ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:255.0f / 255.0f blue:127.0f / 255.0f alpha:1.0f], @"springgreen"         ,
                   [UIColor colorWithRed: 70.0f / 255.0f green:130.0f / 255.0f blue:180.0f / 255.0f alpha:1.0f], @"steelblue"           ,
                   [UIColor colorWithRed:210.0f / 255.0f green:180.0f / 255.0f blue:140.0f / 255.0f alpha:1.0f], @"tan"                 ,
                   [UIColor colorWithRed:  0.0f / 255.0f green:128.0f / 255.0f blue:128.0f / 255.0f alpha:1.0f], @"teal"                ,
                   [UIColor colorWithRed:216.0f / 255.0f green:191.0f / 255.0f blue:216.0f / 255.0f alpha:1.0f], @"thistle"             ,
                   [UIColor colorWithRed:255.0f / 255.0f green: 99.0f / 255.0f blue: 71.0f / 255.0f alpha:1.0f], @"tomato"              ,
                   [UIColor colorWithRed: 64.0f / 255.0f green:224.0f / 255.0f blue:208.0f / 255.0f alpha:1.0f], @"turquoise"           ,
                   [UIColor colorWithRed:238.0f / 255.0f green:130.0f / 255.0f blue:238.0f / 255.0f alpha:1.0f], @"violet"              ,
                   [UIColor colorWithRed:245.0f / 255.0f green:222.0f / 255.0f blue:179.0f / 255.0f alpha:1.0f], @"wheat"               ,
                   [UIColor colorWithRed:255.0f / 255.0f green:255.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f], @"white"               ,
                   [UIColor colorWithRed:245.0f / 255.0f green:245.0f / 255.0f blue:245.0f / 255.0f alpha:1.0f], @"whitesmoke"          ,
                   [UIColor colorWithRed:255.0f / 255.0f green:255.0f / 255.0f blue:  0.0f / 255.0f alpha:1.0f], @"yellow"              ,
                   [UIColor colorWithRed:154.0f / 255.0f green:205.0f / 255.0f blue: 50.0f / 255.0f alpha:1.0f], @"yellowgreen"         ,
                   nil];
    });
    
    return [colors objectForKey:colorName];
}

+ (UIColor *)fromHexString:(NSString *)hexString
{
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    
    if(hexString.length == 3)
    {
        const char *temp = [hexString cStringUsingEncoding:NSASCIIStringEncoding];
        const unsigned short t[] = {temp[0], temp[0], temp[1], temp[1], temp[2], temp[2]};
        hexString = [NSString stringWithCharacters:t length:6];
    }
    
	unsigned int colorCode  = 0;
	unsigned char redByte, greenByte, blueByte;
	
	if (nil != hexString)
	{
		NSScanner *scanner = [NSScanner scannerWithString:hexString];
		(void) [scanner scanHexInt:&colorCode];	// ignore error
	}
	redByte		= (unsigned char) (colorCode >> 16);
	greenByte	= (unsigned char) (colorCode >> 8);
	blueByte	= (unsigned char) (colorCode);	// masks off high bits
	
    return [UIColor
                   colorWithRed: (float)redByte	 / 0xff
                   green:        (float)greenByte / 0xff
                   blue:         (float)blueByte	 / 0xff
                   alpha:1.0];
}

@end