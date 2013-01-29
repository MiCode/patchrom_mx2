.class Lcom/android/gallery3d/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field private pointInSlot:[I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 808
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->pointInSlot:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .locals 1
    .parameter "byLongPress"

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 831
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Listener;->onUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 842
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 843
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 844
    .local v0, scrollLimit:I
    if-nez v0, :cond_0

    .line 849
    :goto_0
    return v2

    .line 845
    :cond_0
    move v1, p4

    .line 846
    .local v1, velocity:F
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 847
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$500(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$500(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 848
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 849
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 881
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 882
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->lockRendering()V

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->pointInSlot:[I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF[I)I

    move-result v0

    .line 886
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->pointInSlot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->pointInSlot:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Listener;->onLongTap(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 855
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 856
    move v0, p4

    .line 857
    .local v0, distance:F
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v1

    .line 858
    .local v1, limit:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget v3, v3, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget v3, v3, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    if-le v3, v1, :cond_1

    .line 859
    :cond_0
    const/high16 v3, 0x4040

    div-float/2addr v0, v3

    .line 861
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v5, v5, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v6, v6, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v2

    .line 863
    .local v2, overDistance:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$600(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 864
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;

    move-result-object v3

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/Paper;->overScroll(F)V

    .line 866
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 867
    const/4 v3, 0x1

    return v3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    .line 814
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 815
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 817
    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 824
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 826
    :goto_0
    return-void

    .line 818
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF[I)I

    move-result v0

    .line 819
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 820
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 821
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 872
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 873
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    :cond_0
    :goto_0
    return v5

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF[I)I

    move-result v0

    .line 875
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
