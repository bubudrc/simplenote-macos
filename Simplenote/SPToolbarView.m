//
//  CustomToolbar.m
//  Simplenote
//
//  Created by Rainieri Ventura on 1/31/12.
//  Copyright (c) 2012 Simperium. All rights reserved.
//

#import "SPToolbarView.h"
#import "TagListViewController.h"
#import "NoteEditorViewController.h"


@implementation SPToolbarView

- (void)awakeFromNib {
    [super awakeFromNib];

    NSButtonCell *shareNoteCell = [self.actionButton cell];
    [shareNoteCell setHighlightsBy:NSContentsCellMask];
    
    [shareButton sendActionOn:NSEventMaskLeftMouseDown];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noNoteLoaded:) name:SPNoNoteLoadedNotificationName object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noteLoaded:) name:SPNoteLoadedNotificationName object:nil];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trashDidLoad:) name:kDidBeginViewingTrash object:nil];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tagsDidLoad:) name:kTagsDidLoad object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trashDidEmpty:) name:kDidEmptyTrash object:nil];
}

- (void)enableButtons:(BOOL)enabled {
    [self.actionButton setEnabled:enabled];
    [shareButton setEnabled:enabled];
    [trashButton setEnabled:enabled];
    [restoreButton setEnabled:enabled];
    [historyButton setEnabled:enabled];
    [previewButton setEnabled:enabled];
}

- (void)noNoteLoaded:(id)sender {
    [self enableButtons:NO];
}

- (void)noteLoaded:(id)sender {
    [self enableButtons:YES];
}

- (void)configureForTrash:(BOOL)trash {
    [self.actionButton setEnabled:!trash];
    [shareButton setHidden:trash];
    [historyButton setHidden:trash];
    [trashButton setHidden:trash];
    [restoreButton setHidden:!trash];
}

- (void)trashDidLoad:(NSNotification *)notification {
    [self configureForTrash:YES];
}

- (void)tagsDidLoad:(NSNotification *)notification {
    [self configureForTrash:NO];
}

- (void)trashDidEmpty:(NSNotification *)notification {
    [trashButton setEnabled:NO];
}

@end
