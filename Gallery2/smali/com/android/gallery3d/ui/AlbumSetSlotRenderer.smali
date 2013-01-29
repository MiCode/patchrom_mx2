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

    .line 77
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

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 79
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 80
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 81
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 83
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, 0x6000cadc

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 87
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    check-cast p1, Landroid/content/Context;

    .end local p1
    const v1, 0x7f020172

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mShadowTexture:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 88
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

    .line 369
    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawNewFolderIcon(Lcom/android/gallery3d/ui/GLCanvas;Z)V

    .line 370
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 1
    .parameter "canvas"
    .parameter "type"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 215
    packed-switch p2, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 222
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->destroy()V

    .line 337
    return-void
.end method

.method public getAlbumSetEntry(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 133
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
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method protected getOverlayType(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)I
    .locals 3
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, overlayType:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 173
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 174
    const/4 v0, 0x2

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 179
    const/4 v0, 0x3

    goto :goto_0

    .line 180
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onContentChangeEnded()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onContentChangeEnded()V

    .line 366
    :cond_0
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 355
    :cond_0
    return-void
.end method

.method public onViewSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 359
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 348
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 333
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 316
    return-void
.end method

.method protected renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I
    .locals 25
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"
    .parameter "overlayType"

    .prologue
    .line 238
    const/16 v21, 0x0

    .line 242
    .local v21, renderRequestFlags:I
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 244
    const/16 v17, 0x0

    .line 245
    .local v17, lastX:I
    const/16 v18, 0x0

    .line 247
    .local v18, lastY:I
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 248
    .local v15, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v7

    .line 249
    .local v7, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v7, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 251
    const/4 v5, 0x1

    iput-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    .line 258
    :cond_1
    :goto_1
    iget-object v0, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 260
    .local v20, rect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v22, v5, v17

    .line 261
    .local v22, x:I
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v23, v5, v18

    .line 262
    .local v23, y:I
    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 263
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 264
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 266
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 267
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 269
    iget-object v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_5

    const/16 v19, 0x0

    .line 270
    .local v19, lockState:I
    :goto_2
    if-lez v19, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V

    .line 272
    const/16 v5, 0x10

    move/from16 v0, v19

    if-eq v0, v5, :cond_6

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawLockIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 282
    :goto_3
    instance-of v5, v7, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v5, :cond_2

    check-cast v7, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v7}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    or-int/lit8 v21, v21, 0x2

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    if-nez v5, :cond_3

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 298
    :cond_3
    iget v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    if-lez v5, :cond_0

    .line 299
    iget v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    sub-int v24, p4, v5

    .line 300
    .local v24, yOffset:I
    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 301
    add-int v17, v17, p3

    .line 302
    add-int v18, v18, v24

    .line 303
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

    .line 252
    .end local v19           #lockState:I
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v22           #x:I
    .end local v23           #y:I
    .end local v24           #yOffset:I
    .restart local v7       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_4
    iget-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    if-eqz v5, :cond_1

    .line 253
    const/4 v5, 0x0

    iput-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    .line 254
    new-instance v7, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    const v5, -0xddddde

    iget-object v6, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v7, v5, v6}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 255
    .restart local v7       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v7, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->content:Lcom/android/gallery3d/ui/Texture;

    goto/16 :goto_1

    .line 269
    .restart local v20       #rect:Landroid/graphics/Rect;
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_5
    iget-object v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v19

    goto/16 :goto_2

    .line 275
    .restart local v19       #lockState:I
    :cond_6
    or-int/lit8 v21, v21, 0x2

    goto :goto_3

    .line 277
    :cond_7
    iget-boolean v5, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->isWaitLoadingDisplayed:Z

    if-eqz v5, :cond_8

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V

    goto/16 :goto_3

    .line 280
    :cond_8
    iget v10, v15, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rotation:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    goto/16 :goto_3

    .line 308
    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    .end local v15           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v19           #lockState:I
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 310
    return v21
.end method

.method protected renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V
    .locals 17
    .parameter "canvas"
    .parameter "entry"
    .parameter "type"
    .parameter "padding"

    .prologue
    .line 188
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 190
    const/4 v6, 0x0

    .line 191
    .local v6, lastX:I
    const/4 v7, 0x0

    .line 192
    .local v7, lastY:I
    mul-int/lit8 v9, p4, 0x2

    .line 194
    .local v9, paddingWidth:I
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

    .line 195
    .local v3, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v10, v3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    .line 197
    .local v10, rect:Landroid/graphics/Rect;
    iget v15, v10, Landroid/graphics/Rect;->left:I

    sub-int v8, v15, p4

    .line 198
    .local v8, left:I
    iget v15, v10, Landroid/graphics/Rect;->top:I

    sub-int v11, v15, p4

    .line 199
    .local v11, top:I
    sub-int v13, v8, v6

    .line 200
    .local v13, x:I
    sub-int v14, v11, v7

    .line 201
    .local v14, y:I
    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 202
    move v6, v8

    .line 203
    move v7, v11

    .line 205
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v12, v15, v9

    .line 206
    .local v12, width:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v4, v15, v9

    .line 208
    .local v4, height:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v12, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;III)V

    goto :goto_0

    .line 211
    .end local v3           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v4           #height:I
    .end local v8           #left:I
    .end local v10           #rect:Landroid/graphics/Rect;
    .end local v11           #top:I
    .end local v12           #width:I
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 212
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)I
    .locals 18
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v5

    .line 139
    .local v5, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v3, v4, :cond_1

    .line 140
    :cond_0
    const/16 v17, 0x0

    .line 166
    :goto_0
    return v17

    .line 142
    :cond_1
    iget-object v3, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    instance-of v3, v3, Lcom/android/gallery3d/data/FolderIconAlbum;

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    .line 143
    const/16 v17, 0x0

    .line 144
    .local v17, renderRequestFlags:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getOverlayType(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)I

    move-result v8

    .line 145
    .local v8, overlayType:I
    const/4 v3, 0x2

    if-ne v8, v3, :cond_2

    .line 146
    or-int/lit8 v17, v17, 0x2

    .line 148
    :cond_2
    sget v3, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p6

    move/from16 v7, p7

    .line 149
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v3

    or-int v17, v17, v3

    .line 150
    iget-object v11, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v12

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v9 .. v14}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BitmapTexture;III)I

    move-result v3

    or-int v17, v17, v3

    .line 159
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    if-eqz v3, :cond_3

    .line 160
    const/16 v15, 0x72

    .local v15, offsetX:I
    const/16 v16, 0x72

    .line 161
    .local v16, offsetY:I
    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderAddIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 163
    neg-int v3, v15

    int-to-float v3, v3

    move/from16 v0, v16

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 165
    .end local v15           #offsetX:I
    .end local v16           #offsetY:I
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mIsEntryFolderIconAlbum:Z

    goto :goto_0

    .line 153
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v9 .. v14}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)I

    move-result v3

    or-int v17, v17, v3

    .line 154
    iget-object v11, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v12

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v9 .. v14}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BitmapTexture;III)I

    move-result v3

    or-int v17, v17, v3

    .line 156
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v8, v3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 341
    return-void
.end method

.method public setDragItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5
    .parameter "model"

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 121
    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    .line 125
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x30

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 130
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method
