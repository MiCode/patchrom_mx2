.class public Lcom/android/gallery3d/ui/SlotView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcom/android/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/android/gallery3d/ui/SlotView$GridLayout;,
        Lcom/android/gallery3d/ui/SlotView$Spec;,
        Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;,
        Lcom/android/gallery3d/ui/SlotView$RisingAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SlotAnimation;,
        Lcom/android/gallery3d/ui/SlotView$Layout;,
        Lcom/android/gallery3d/ui/SlotView$SlotRenderer;,
        Lcom/android/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/android/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

.field private mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/android/gallery3d/ui/Paper;

.field private mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

.field private final mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/SlotView$Layout;)V
    .locals 6
    .parameter "activity"
    .parameter "spec"
    .parameter "layout"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 87
    new-instance v0, Lcom/android/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    .line 92
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 93
    iput-object v5, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 104
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    .line 115
    new-instance v1, Landroid/view/GestureDetector;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    new-instance v2, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v2, p0, v5}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 117
    new-instance v1, Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, v4, v3}, Lcom/android/gallery3d/ui/ScrollerHelper;->setEnableMZOverScroll(ZZ)V

    .line 119
    new-instance v0, Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/SlotView;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 122
    new-instance v0, Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/ScrollBarView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 125
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .parameter "array"
    .parameter "capacity"

    .prologue
    .line 284
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 285
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 287
    :cond_0
    return-object p0
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I
    .locals 10
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    .line 377
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v0, p2, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 379
    .local v8, rect:Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/android/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v8}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v2

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    sub-int v7, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIIIII)I

    move-result v9

    .line 389
    .local v9, result:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 390
    return v9

    .line 382
    .end local v9           #result:I
    :cond_1
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private updateScrollBarView()V
    .locals 6

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 967
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0xf

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/ui/ScrollBarView;->layout(IIII)V

    .line 968
    return-void
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 230
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public getScrollX()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 924
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 149
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v8, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v7, p1, v8}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 150
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 151
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getHeight()I

    move-result v6

    .line 152
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 153
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 154
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 156
    .local v3, slotEnd:I
    move v0, v4

    .line 157
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 158
    move v0, v4

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 166
    return-void

    .line 159
    :cond_1
    if-ge v2, v4, :cond_2

    .line 160
    move v0, v2

    goto :goto_0

    .line 161
    :cond_2
    if-le v3, v5, :cond_0

    .line 162
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 208
    .local v0, visibleIndex:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSize(II)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    .line 210
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/Paper;->setSize(II)V

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView;->updateScrollBarView()V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 242
    .local v0, limit:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 243
    return-void
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-lez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/ScrollerHelper;->startScroll(IIII)I

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 196
    :cond_2
    return v4
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return v8

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v8

    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v7

    .line 260
    .local v7, limit:I
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-le v0, v7, :cond_3

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/ScrollerHelper;->springBack(IIIIII)Z

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/Paper;->onRelease()V

    .line 264
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 292
    invoke-super/range {p0 .. p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 373
    :goto_0
    return-void

    .line 295
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->prepareDrawing()V

    .line 297
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    .line 298
    .local v3, animTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v9

    .line 299
    .local v9, more:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->advanceAnimation(J)Z

    move-result v24

    or-int v9, v9, v24

    .line 300
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    .line 301
    .local v13, oldX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 303
    const/4 v14, 0x0

    .line 304
    .local v14, paperActive:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 306
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    .line 307
    .local v12, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v7

    .line 308
    .local v7, limit:I
    if-lez v13, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    if-ge v13, v7, :cond_4

    if-ne v12, v7, :cond_4

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v21

    .line 310
    .local v21, v:F
    if-ne v12, v7, :cond_3

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 313
    :cond_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v24

    if-nez v24, :cond_4

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/Paper;->edgeReached(F)V

    .line 317
    .end local v21           #v:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v14

    .line 320
    .end local v7           #limit:I
    .end local v12           #newX:I
    :cond_5
    or-int/2addr v9, v14

    .line 321
    if-eqz v9, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 324
    .local v5, height:I
    int-to-float v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v25

    add-int v25, v25, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 325
    .local v17, ratio:F
    const/16 v24, 0x0

    const/high16 v25, 0x3f80

    move/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v17

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ScrollBarView;->setRatio(F)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mScrollBarView:Lcom/android/gallery3d/ui/ScrollBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/gallery3d/ui/ScrollBarView;->show()V

    .line 329
    .end local v5           #height:I
    .end local v17           #ratio:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->calculate(J)Z

    move-result v24

    or-int v9, v9, v24

    .line 333
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v23

    .line 336
    .local v23, visibleStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v22

    .line 337
    .local v22, visibleEnd:I
    const/16 v18, 0x0

    .line 338
    .local v18, requestCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v24, v0

    sub-int v25, v22, v23

    invoke-static/range {v24 .. v25}, Lcom/android/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v20, v0

    .line 342
    .local v20, requestedSlot:[I
    add-int/lit8 v6, v22, -0x1

    .local v6, i:I
    move/from16 v19, v18

    .end local v18           #requestCount:I
    .local v19, requestCount:I
    :goto_1
    move/from16 v0, v23

    if-lt v6, v0, :cond_9

    .line 343
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v6, v2, v14}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v16

    .line 344
    .local v16, r:I
    and-int/lit8 v24, v16, 0x2

    if-eqz v24, :cond_8

    const/4 v9, 0x1

    .line 345
    :cond_8
    and-int/lit8 v24, v16, 0x1

    if-eqz v24, :cond_10

    add-int/lit8 v18, v19, 0x1

    .end local v19           #requestCount:I
    .restart local v18       #requestCount:I
    aput v6, v20, v19

    .line 342
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move/from16 v19, v18

    .end local v18           #requestCount:I
    .restart local v19       #requestCount:I
    goto :goto_1

    .line 348
    .end local v16           #r:I
    :cond_9
    const/4 v15, 0x1

    .local v15, pass:I
    move/from16 v18, v19

    .end local v19           #requestCount:I
    .restart local v18       #requestCount:I
    :goto_3
    if-eqz v18, :cond_c

    .line 349
    const/4 v10, 0x0

    .line 350
    .local v10, newCount:I
    const/4 v6, 0x0

    move v11, v10

    .end local v10           #newCount:I
    .local v11, newCount:I
    :goto_4
    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    .line 351
    aget v24, v20, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v14}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;IIZ)I

    move-result v16

    .line 353
    .restart local v16       #r:I
    and-int/lit8 v24, v16, 0x2

    if-eqz v24, :cond_a

    const/4 v9, 0x1

    .line 354
    :cond_a
    and-int/lit8 v24, v16, 0x1

    if-eqz v24, :cond_f

    add-int/lit8 v10, v11, 0x1

    .end local v11           #newCount:I
    .restart local v10       #newCount:I
    aput v6, v20, v11

    .line 350
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    .end local v10           #newCount:I
    .restart local v11       #newCount:I
    goto :goto_4

    .line 356
    .end local v16           #r:I
    :cond_b
    move/from16 v18, v11

    .line 348
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 359
    .end local v11           #newCount:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 361
    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 363
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 364
    .local v8, listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    if-nez v9, :cond_e

    if-eqz v8, :cond_e

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/gallery3d/ui/SlotView$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/gallery3d/ui/SlotView$1;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_e
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    goto/16 :goto_0

    .end local v8           #listener:Lcom/android/gallery3d/ui/UserInteractionListener;
    .restart local v11       #newCount:I
    .restart local v16       #r:I
    :cond_f
    move v10, v11

    .end local v11           #newCount:I
    .restart local v10       #newCount:I
    goto :goto_5

    .end local v10           #newCount:I
    .end local v15           #pass:I
    .end local v18           #requestCount:I
    .restart local v19       #requestCount:I
    :cond_10
    move/from16 v18, v19

    .end local v19           #requestCount:I
    .restart local v18       #requestCount:I
    goto/16 :goto_2
.end method

.method public setActionBarHeight(I)V
    .locals 1
    .parameter "actionBarheight"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setActionBarHeight(I)V

    .line 395
    return-void
.end method

.method public setBottomBarHeight(I)V
    .locals 1
    .parameter "bottomBarheight"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setBottomBarHeight(I)V

    .line 399
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotCount()I

    move-result v2

    .line 138
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v3, p1, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 142
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 145
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    .line 272
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 171
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 172
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    const/4 v2, -0x1

    .line 899
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 902
    .local v0, changed:Z
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 903
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 904
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 907
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 908
    return v0
.end method

.method public setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 3
    .parameter "slotDrawer"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotRenderer(Lcom/android/gallery3d/ui/SlotView$SlotRenderer;)V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mRenderer:Lcom/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 134
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotSpec(Lcom/android/gallery3d/ui/SlotView$Spec;)V

    .line 176
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 227
    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/android/gallery3d/ui/RelativePosition;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 218
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/SlotView$ScatteringAnimation;-><init>(Lcom/android/gallery3d/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$SlotAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;->start()V

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 221
    :cond_0
    return-void
.end method
