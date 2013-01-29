.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mDragItemPath:Lcom/android/gallery3d/data/Path;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private final mIsVideo:Z

.field private final mLabelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSeperatorWidth:I

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private final mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

.field private mSperatorTexture:Lcom/android/gallery3d/ui/ColorTexture;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;Lcom/android/gallery3d/ui/SelectionManager;Z)V
    .locals 3
    .parameter "activity"
    .parameter "slotView"
    .parameter "spec"
    .parameter "labelSpec"
    .parameter "selectionManager"
    .parameter "isVideo"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 68
    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 69
    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 89
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 90
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 91
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    .line 92
    iput-object p5, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 93
    iput-boolean p6, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mIsVideo:Z

    .line 95
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private renderHeader(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 9
    .parameter "canvas"
    .parameter "index"
    .parameter "x"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->getHeaderTexture(I)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v7

    .line 223
    .local v7, texture:Lcom/android/gallery3d/ui/StringTexture;
    if-eqz v7, :cond_1

    .line 224
    neg-int v6, p3

    .line 225
    .local v6, left:I
    const/4 v8, 0x0

    .line 226
    .local v8, top:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mIsVideo:Z

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerHeight:I

    sub-int v8, v0, v1

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginLeft:I

    add-int/2addr v0, v6

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginTop:I

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v2, v2, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextHeight:I

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v7, p1, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSperatorTexture:Lcom/android/gallery3d/ui/ColorTexture;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    const v1, -0xc9c9ca

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSperatorTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSperatorTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v5, v5}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginTop:I

    add-int/2addr v0, v8

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextHeight:I

    add-int v3, v0, v1

    .line 240
    .local v3, seperatorTop:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSperatorTexture:Lcom/android/gallery3d/ui/ColorTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorMargin:I

    add-int v2, v6, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSeperatorWidth:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v5, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ColorTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 242
    .end local v3           #seperatorTop:I
    .end local v6           #left:I
    .end local v8           #top:I
    :cond_1
    return-void

    .line 229
    .restart local v6       #left:I
    .restart local v8       #top:I
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->headerHeight:I

    sub-int v8, v0, v1

    goto :goto_0
.end method

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 3
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, renderRequestFlags:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_2

    .line 248
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 250
    or-int/lit8 v0, v0, 0x2

    .line 251
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 253
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_3

    .line 259
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 260
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->destroy()V

    .line 288
    return-void
.end method

.method public getAlbumEntry(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

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
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method public onContentChangeEnded()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->onContentChangeEnded()V

    .line 326
    :cond_0
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->onSlotSizeChanged(II)V

    .line 307
    :cond_0
    return-void
.end method

.method public onViewSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSeperatorWidth:I

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->onViewSizeChanged(II)V

    .line 315
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 300
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 284
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 293
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)I
    .locals 17
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    move/from16 v0, p2

    invoke-interface {v5, v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v16, 0x0

    .line 218
    :goto_0
    return v16

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v11

    .line 151
    .local v11, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    if-nez v11, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    .line 153
    :cond_1
    iget-object v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v5, v6, :cond_2

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderHeader(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 155
    const/16 v16, 0x0

    goto :goto_0

    .line 158
    :cond_2
    const/16 v16, 0x0

    .line 160
    .local v16, renderRequestFlags:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mIsVideo:Z

    if-eqz v5, :cond_4

    .line 161
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 162
    iget-object v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v5, :cond_3

    .line 163
    iget-object v7, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryLabelMaker;->getBorderSize()I

    move-result v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BitmapTexture;III)I

    move-result v5

    or-int v16, v16, v5

    .line 166
    :cond_3
    iget-object v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    if-eqz v5, :cond_4

    .line 167
    iget-object v15, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rect:Landroid/graphics/Rect;

    .line 168
    .local v15, rect:Landroid/graphics/Rect;
    iget v5, v15, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v15, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 169
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result p6

    .line 170
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result p7

    .line 174
    .end local v15           #rect:Landroid/graphics/Rect;
    :cond_4
    iget-object v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v7

    .line 175
    .local v7, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v7, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 177
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 184
    :cond_5
    :goto_1
    iget-object v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_9

    const/4 v14, 0x0

    .line 185
    .local v14, lockState:I
    :goto_2
    if-lez v14, :cond_b

    .line 186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V

    .line 187
    const/16 v5, 0x10

    if-eq v14, v5, :cond_a

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawLockIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 197
    :goto_3
    instance-of v5, v7, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v5, :cond_6

    check-cast v7, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v7}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    or-int/lit8 v16, v16, 0x2

    :cond_6
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p6

    move/from16 v13, p7

    .line 210
    invoke-direct/range {v8 .. v13}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v5

    or-int v16, v16, v5

    .line 212
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mIsVideo:Z

    if-eqz v5, :cond_7

    .line 213
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 216
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderHeader(Lcom/android/gallery3d/ui/GLCanvas;III)V

    goto/16 :goto_0

    .line 178
    .end local v14           #lockState:I
    .restart local v7       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_8
    iget-boolean v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v5, :cond_5

    .line 179
    const/4 v5, 0x0

    iput-boolean v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 180
    new-instance v7, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v7           #content:Lcom/android/gallery3d/ui/Texture;
    const v5, -0xddddde

    iget-object v6, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v7, v5, v6}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 181
    .restart local v7       #content:Lcom/android/gallery3d/ui/Texture;
    iput-object v7, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto :goto_1

    .line 184
    :cond_9
    iget-object v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getLockState()I

    move-result v14

    goto :goto_2

    .line 190
    .restart local v14       #lockState:I
    :cond_a
    or-int/lit8 v16, v16, 0x2

    goto :goto_3

    .line 192
    :cond_b
    iget-boolean v5, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v5, :cond_c

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContentStretched(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;II)V

    goto :goto_3

    .line 195
    :cond_c
    iget v10, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    goto :goto_3
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 280
    return-void
.end method

.method public setDragItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDragItemPath:Lcom/android/gallery3d/data/Path;

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;)V
    .locals 8
    .parameter "model"

    .prologue
    const/4 v7, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 131
    iput-object v7, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    .line 134
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const/16 v5, 0x60

    iget-boolean v6, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mIsVideo:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;IZ)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v7}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-interface {p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 138
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .parameter "slotFilter"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 319
    return-void
.end method
