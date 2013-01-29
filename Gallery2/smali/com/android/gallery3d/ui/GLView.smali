.class public Lcom/android/gallery3d/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# instance fields
.field private mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/android/gallery3d/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/android/gallery3d/ui/GLView;

.field private mRoot:Lcom/android/gallery3d/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 67
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 69
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 70
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 72
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 73
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 75
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 76
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    .line 77
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollHeight:I

    .line 78
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private removeOneComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_0

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 173
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 175
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 176
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 178
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 179
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 180
    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 321
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 323
    .local v0, sizeChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    return v0

    .line 321
    .end local v0           #sizeChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 137
    iget-object v0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iput-object p0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 150
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 119
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 275
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 276
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 277
    .local v10, action:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 278
    if-nez v10, :cond_2

    .line 279
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 280
    .local v1, cancel:Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 281
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 292
    .end local v1           #cancel:Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_6

    .line 294
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_6

    .line 295
    invoke-virtual {p0, v11}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v8

    .line 296
    .local v8, component:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 284
    .end local v8           #component:Lcom/android/gallery3d/ui/GLView;
    .end local v11           #i:I
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 285
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 287
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 289
    :cond_4
    const/4 v0, 0x1

    .line 303
    :goto_1
    return v0

    .line 297
    .restart local v8       #component:Lcom/android/gallery3d/ui/GLView;
    .restart local v11       #i:I
    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iput-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 299
    const/4 v0, 0x1

    goto :goto_1

    .line 303
    .end local v8           #component:Lcom/android/gallery3d/ui/GLView;
    .end local v11           #i:I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 259
    iget-object v1, p4, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 260
    .local v1, rect:Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 261
    .local v0, left:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 262
    .local v2, top:I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 264
    invoke-virtual {p4, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 266
    const/4 v3, 0x1

    .line 270
    :goto_0
    return v3

    .line 268
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 270
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, xoffset:I
    const/4 v3, 0x0

    .line 371
    .local v3, yoffset:I
    move-object v1, p1

    .line 372
    .local v1, view:Lcom/android/gallery3d/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 373
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 381
    :goto_1
    return v4

    .line 374
    :cond_0
    iget-object v0, v1, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 375
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 376
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 377
    iget-object v1, v1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 378
    goto :goto_0

    .line 379
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 381
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 202
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 203
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/GLView;->setBounds(IIII)Z

    move-result v1

    .line 312
    .local v1, sizeChanged:Z
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 318
    return-void
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 411
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 328
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 342
    :cond_0
    return-void

    .line 333
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 334
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 336
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLView;->onMeasure(II)V

    .line 338
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 395
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 396
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 405
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 363
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 345
    return-void
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 3

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    .line 447
    .local v0, child:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->onStatusBarTapScrollTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    const/4 v2, 0x1

    .line 451
    .end local v0           #child:Lcom/android/gallery3d/ui/GLView;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 385
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 386
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    .line 387
    .local v0, child:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v0           #child:Lcom/android/gallery3d/ui/GLView;
    :cond_1
    return-void
.end method

.method public removeAllComponents()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GLView;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/GLView;->removeOneComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 168
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 227
    return-void
.end method

.method protected renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .parameter "canvas"
    .parameter "component"

    .prologue
    .line 230
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 251
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 234
    .local v1, xoffset:I
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 236
    .local v2, yoffset:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 238
    iget-object v0, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 239
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 241
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 246
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 248
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 249
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 250
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 244
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 207
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 208
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 209
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 215
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 96
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 100
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public startAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 82
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->registerLaunchedAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 89
    return-void
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 417
    :cond_0
    return-void
.end method
