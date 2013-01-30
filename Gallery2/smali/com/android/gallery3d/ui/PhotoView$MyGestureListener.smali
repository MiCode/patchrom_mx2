.class Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field private mSeenScaling:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private flingImages(FF)Z
    .locals 5
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f00

    .line 1112
    add-float v3, p1, v4

    float-to-int v0, v3

    .line 1113
    .local v0, vx:I
    add-float v3, p2, v4

    float-to-int v1, v3

    .line 1114
    .local v1, vy:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result v2

    .line 1148
    :cond_0
    :goto_0
    return v2

    .line 1117
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1118
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PositionController;->flingFilmX(I)Z

    move-result v2

    goto :goto_0

    .line 1122
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3500(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1236
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1239
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1242
    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1245
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1248
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1250
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1013
    iget-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    .line 1050
    :goto_0
    return v9

    .line 1014
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1015
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1017
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 1018
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1019
    .local v2, inv:Landroid/graphics/Matrix;
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1020
    const/4 v9, 0x2

    new-array v4, v9, [F

    const/4 v9, 0x0

    aput p1, v4, v9

    const/4 v9, 0x1

    aput p2, v4, v9

    .line 1021
    .local v4, pts:[F
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1022
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v4, v10

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-interface {v9, v10, v11}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onDoubleTap(II)V

    .line 1024
    .end local v2           #inv:Landroid/graphics/Matrix;
    .end local v3           #m:Landroid/graphics/Matrix;
    .end local v4           #pts:[F
    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1026
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1027
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v6

    .line 1030
    .local v6, scale:F
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1031
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1032
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1033
    .local v7, width:I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1034
    .local v1, height:I
    move v8, v6

    .line 1035
    .local v8, zoomScale:F
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mSetWallpaperMode:Z
    invoke-static {v9}, Lcom/android/gallery3d/ui/PhotoView;->access$3200(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v9

    if-eqz v9, :cond_3

    mul-int v9, v7, v1

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v10, v10, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v11, v11, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_5

    .line 1036
    :cond_3
    const/high16 v9, 0x4040

    mul-float v8, v6, v9

    .line 1045
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1046
    invoke-virtual {v0, p1, p2, v8}, Lcom/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    .line 1050
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1038
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v9, v9, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v7, v9, :cond_6

    .line 1039
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v9, v9, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    int-to-float v10, v1

    div-float v8, v9, v10

    goto :goto_1

    .line 1040
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v9, v9, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v1, v9, :cond_4

    .line 1041
    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v9, v9, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    int-to-float v10, v7

    div-float v8, v9, v10

    goto :goto_1

    .line 1048
    :cond_7
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_2
.end method

.method public onDown(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1254
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1400(Lcom/android/gallery3d/ui/PhotoView;I)V

    .line 1256
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 1257
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mSeenScaling:Z

    .line 1259
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1261
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v2, v6}, Lcom/android/gallery3d/ui/PhotoView;->access$176(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1263
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1264
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1265
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 1270
    :goto_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1271
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1272
    add-float v2, p1, v5

    float-to-int v0, v2

    .line 1273
    .local v0, xi:I
    add-float v2, p2, v5

    float-to-int v1, v2

    .line 1274
    .local v1, yi:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->hitTest(II)I

    move-result v3

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3502(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1275
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3500(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3500(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1276
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3502(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto :goto_0

    .line 1267
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_2
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_1

    .line 1278
    .restart local v0       #xi:I
    .restart local v1       #yi:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3500(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isDeletable()Z

    move-result v2

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3302(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    goto/16 :goto_0

    .line 1282
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3502(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_0
.end method

.method public onFling(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    return v1

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1108
    :cond_0
    :goto_0
    return v1

    .line 1102
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mSeenScaling:Z

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1104
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1106
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FF)Z

    goto :goto_0
.end method

.method public onLongPress(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f00

    .line 1000
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1002
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1003
    .local v1, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1004
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1005
    const/4 v3, 0x2

    new-array v2, v3, [F

    aput p1, v2, v4

    aput p2, v2, v5

    .line 1006
    .local v2, pts:[F
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1007
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    aget v4, v2, v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    aget v5, v2, v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onLongPress(II)V

    .line 1009
    .end local v0           #inv:Landroid/graphics/Matrix;
    .end local v1           #m:Landroid/graphics/Matrix;
    .end local v2           #pts:[F
    :cond_0
    return-void
.end method

.method public onScale(FFF)Z
    .locals 5
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1184
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return v2

    .line 1185
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v3, :cond_0

    .line 1186
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v3, :cond_0

    .line 1187
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1188
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, p3, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    .line 1195
    .local v1, outOfRange:I
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v3, p3

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    .line 1196
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v4, 0x3f7851ec

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v4, 0x3f83d70a

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    :cond_4
    move v0, v2

    .line 1218
    .local v0, largeEnough:Z
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$172(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1219
    if-eqz v1, :cond_6

    .line 1220
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto :goto_0

    .line 1222
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 3
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1165
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v2

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 1168
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->beginScale(FF)V

    .line 1174
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 1176
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1177
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mSeenScaling:Z

    .line 1178
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1174
    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1231
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->endScale()V

    goto :goto_0
.end method

.method public onScroll(FFFF)Z
    .locals 6
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v3, 0x1

    return v3

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return v3

    .line 1056
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v2, :cond_2

    .line 1057
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1058
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    .line 1061
    :cond_2
    neg-float v2, p1

    add-float/2addr v2, v5

    float-to-int v0, v2

    .line 1062
    .local v0, dxi:I
    neg-float v2, p2

    add-float/2addr v2, v5

    float-to-int v1, v2

    .line 1063
    .local v1, dyi:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/PositionController;->scrollFilmX(I)V

    goto :goto_0

    .line 1058
    .end local v0           #dxi:I
    .end local v1           #dyi:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1078
    .restart local v0       #dxi:I
    .restart local v1       #dyi:I
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 969
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUpConfirmed(FF)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f00

    .line 976
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$172(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 978
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v3, :cond_0

    .line 979
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    add-float v4, p1, v6

    float-to-int v4, v4

    add-float v5, p2, v6

    float-to-int v5, v5

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3000(Lcom/android/gallery3d/ui/PhotoView;II)V

    .line 981
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 985
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 987
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 988
    .local v1, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 989
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 990
    const/4 v3, 0x2

    new-array v2, v3, [F

    aput p1, v2, v8

    aput p2, v2, v7

    .line 991
    .local v2, pts:[F
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 992
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    aget v4, v2, v8

    add-float/2addr v4, v6

    float-to-int v4, v4

    aget v5, v2, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onSingleTapUpConfirmed(II)V

    .line 994
    .end local v0           #inv:Landroid/graphics/Matrix;
    .end local v1           #m:Landroid/graphics/Matrix;
    .end local v2           #pts:[F
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 995
    return v7
.end method

.method public onUp()V
    .locals 2

    .prologue
    return-void

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$172(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1311
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v0, :cond_1

    .line 1312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)V

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1320
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1321
    return-void

    .line 1320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
