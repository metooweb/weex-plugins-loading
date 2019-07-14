//
//  LoadingModule.m
//  WeexPluginTemp
//
//  Created by  on 17/3/14.
//  Copyright © 2017年 . All rights reserved.
//

#import "LoadingModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <MBProgressHUD/MBProgressHUD.h>

@interface LoadingModule () {
    MBProgressHUD *handler;
}

@end

@implementation LoadingModule

WX_PlUGIN_EXPORT_MODULE(loading, LoadingModule)


WX_EXPORT_METHOD(@selector(show))
WX_EXPORT_METHOD(@selector(hide))

@synthesize weexInstance;

-(void) show
{
    if( handler == NULL ){
        handler = [MBProgressHUD showHUDAddedTo:weexInstance.viewController.view animated:YES];
    }
}

-(void) hide
{
    if(handler != nil ){
        [handler hideAnimated:YES];
        handler = nil;
    }
    
}


@end
