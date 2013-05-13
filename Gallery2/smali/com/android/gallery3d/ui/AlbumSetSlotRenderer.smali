.class public Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAnimatePressedUp:Z

.field protected mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

.field private mDragItemPath:Lcom/android/gallery3d/data/Path;

.field private mFolderIconOffsetX:I

.field private mFolderIconOffsetY:I

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private mIsEntryFolderIconAlbum:Z

.field protected final mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private mPressedIndex:I

.field private final mPressedTexture:Lcom/android/gallery3d/ui/ColorTexture;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private final mShadowTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 3
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "slotView"
    .parameter "labelSpec"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 59
    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 60
    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 82
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 83
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 84
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 86
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 88
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, 0x6000cadc

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 90
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    check-cast p1, Landroid/content/Context;

    .end local p1
    const v1, 0x7f02016d

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mShadowTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090284

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFolderIconOffsetX:I

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFolderIconOffsetY:I

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private renderAddIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1
    .parameter "canvas"
    .parameter "overlayType"

    .prologue
    const/4 v0, 0x1

    .line 388
    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawNewFolderIcon(Lcom/android/gallery3d/ui/GLCanvas;Z)V

    .line 389
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 0
    .parameter "canvas"
    .parameter "type"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    packed-switch p2, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 223
    :pswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 235
    :pswitch_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 239
    :pswitch_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawNormalFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->destroy()V

    .line 356
    return-void
.end method

.method public getAlbumSetEntry(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragItemPath()Lcom/android/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method protected getOverlayType(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)I
    .locals 3
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, overlayType:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 177
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 178
    const/4 v0, 0x2

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 183
    const/4 v0, 0x3

    goto :goto_0

    .line 184
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onContentChangeEnded()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onContentChangeEnded()V

    .line 385
    :cond_0
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 374
    :cond_0
    return-void
.end method

.method public onViewSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 378
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 367
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 352
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 335
    return-void
.end method

.method protected renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I
    .locals 26
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"
    .parameter "overlayType"

    .prologue
    .line 248
    const/16 v21, 0x0

    .line 252
    .local v21, renderRequestFlags:I
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 254
    const/16 v17, 0x0

    .line 255
    .local v17, lastX:I
    const/16 v18, 0x0

    .line 256
    .local v18, lastY:I
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v5, :cond_0

    .line 257
    new-instance v5, Lcom/android/gallery3d/ui/FadeOutTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v5, v6}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 260
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 261
    :try_start_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 262
    .local v15, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v7

    .line 263
    .local v7, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v7, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 265
    const/4 v5, 0x1

    iput-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    .line 272
    :cond_2
    :goto_1
    iget-object v0, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 274
    .local v20, rect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v22, v5, v17

    .line 275
    .local v22, x:I
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v23, v5, v18

    .line 276
    .local v23, y:I
    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 277
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 278
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 280
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 281
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 283
    iget-object v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_6

    const/16 v19, 0x0

    .line 284
    .local v19, lockState:I
    :goto_2
    if-lez v19, :cond_8

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V

    .line 286
    const/16 v5, 0x10

    move/from16 v0, v19

    if-eq v0, v5, :cond_7

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawLockIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 296
    :goto_3
    instance-of v5, v7, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v5, :cond_3

    check-cast v7, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v7}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    or-int/lit8 v21, v21, 0x2

    .line 308
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    if-nez v5, :cond_4

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 311
    :cond_4
    iget v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    if-lez v5, :cond_1

    .line 312
    iget v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    sub-int v24, p4, v5

    .line 313
    .local v24, yOffset:I
    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 314
    add-int v17, v17, p3

    .line 315
    add-int v18, v18, v24

    .line 316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mShadowTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mShadowTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mShadowTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v13

    iget v14, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    goto/16 :goto_0

    .line 319
    .end local v15           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #lockState:I
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v22           #x:I
    .end local v23           #y:I
    .end local v24           #yOffset:I
    :catchall_0
    move-exception v5

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 266
    .restart local v7       #content:Lcom/android/gallery3d/ui/Texture;
    .restart local v15       #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    iget-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    if-eqz v5, :cond_2

    .line 267
    const/4 v5, 0x0

    iput-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    .line 268
    new-instance v7, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    const v5, -0xddddde

    iget-object v6, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v7, v5, v6}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 269
    .restart local v7       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v7, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->content:Lcom/android/gallery3d/ui/Texture;

    goto/16 :goto_1

    .line 283
    .restart local v20       #rect:Landroid/graphics/Rect;
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_6
    iget-object v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v19

    goto/16 :goto_2

    .line 289
    .restart local v19       #lockState:I
    :cond_7
    or-int/lit8 v21, v21, 0x2

    goto :goto_3

    .line 291
    :cond_8
    iget-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    if-eqz v5, :cond_9

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V

    goto/16 :goto_3

    .line 294
    :cond_9
    iget v10, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rotation:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    goto/16 :goto_3

    .line 319
    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    .end local v15           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v19           #lockState:I
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_a
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 322
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 323
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 324
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 327
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 329
    return v21
.end method

.method protected renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V
    .locals 18
    .parameter "canvas"
    .parameter "entry"
    .parameter "type"
    .parameter "padding"

    .prologue
    .line 192
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 194
    const/4 v6, 0x0

    .line 195
    .local v6, lastX:I
    const/4 v7, 0x0

    .line 196
    .local v7, lastY:I
    mul-int/lit8 v9, p4, 0x2

    .line 198
    .local v9, paddingWidth:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 199
    :try_start_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 200
    .local v3, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v10, v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    .line 202
    .local v10, rect:Landroid/graphics/Rect;
    iget v15, v10, Landroid/graphics/Rect;->left:I

    sub-int v8, v15, p4

    .line 203
    .local v8, left:I
    iget v15, v10, Landroid/graphics/Rect;->top:I

    sub-int v11, v15, p4

    .line 204
    .local v11, top:I
    sub-int v13, v8, v6

    .line 205
    .local v13, x:I
    sub-int v14, v11, v7

    .line 206
    .local v14, y:I
    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v15, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 207
    move v6, v8

    .line 208
    move v7, v11

    .line 210
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v12, v15, v9

    .line 211
    .local v12, width:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v4, v15, v9

    .line 213
    .local v4, height:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v12, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;III)V

    goto :goto_0

    .line 215
    .end local v3           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v4           #height:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #left:I
    .end local v10           #rect:Landroid/graphics/Rect;
    .end local v11           #top:I
    .end local v12           #width:I
    .end local v13           #x:I
    .end local v14           #y:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 218
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)I
    .locals 13
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    .line 144
    .local v2, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v1, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, v1, :cond_1

    .line 145
    :cond_0
    const/4 v12, 0x0

    .line 170
    :goto_0
    return v12

    .line 147
    :cond_1
    iget-object v0, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/android/gallery3d/data/FolderIconAlbum;

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    .line 148
    const/4 v12, 0x0

    .line 149
    .local v12, renderRequestFlags:I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getOverlayType(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)I

    move-result v5

    .line 150
    .local v5, overlayType:I
    const/4 v0, 0x2

    if-ne v5, v0, :cond_2

    .line 151
    or-int/lit8 v12, v12, 0x2

    .line 153
    :cond_2
    sget v0, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p6

    move/from16 v4, p7

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v0

    or-int/2addr v12, v0

    .line 155
    iget-object v8, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v9

    move-object v6, p0

    move-object v7, p1

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BitmapTexture;III)I

    move-result v0

    or-int/2addr v12, v0

    .line 164
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    if-eqz v0, :cond_3

    .line 165
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFolderIconOffsetX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFolderIconOffsetY:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 166
    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderAddIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 167
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFolderIconOffsetX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFolderIconOffsetY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 169
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    goto :goto_0

    .line 158
    :cond_4
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, v2

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v0

    or-int/2addr v12, v0

    .line 159
    iget-object v8, v2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v9

    move-object v6, p0

    move-object v7, p1

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BitmapTexture;III)I

    move-result v0

    or-int/2addr v12, v0

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 360
    return-void
.end method

.method public setDragItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5
    .parameter "model"

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 126
    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x30

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 135
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method
