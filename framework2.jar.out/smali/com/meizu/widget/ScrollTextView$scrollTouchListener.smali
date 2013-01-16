.class Lcom/meizu/widget/ScrollTextView$scrollTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "scrollTouchListener"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/meizu/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/ScrollTextView;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 147
    :try_start_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/meizu/widget/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 165
    .local v3, y:F
    const/4 v2, 0x0

    .line 166
    .local v2, offset:I
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget-object v4, v4, Lcom/meizu/widget/ScrollTextView;->mLineView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v7}, Lcom/meizu/widget/ScrollTextView;->getCurrentItemId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, focusView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    move v4, v5

    .line 208
    :goto_0
    return v4

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v4

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v7}, Lcom/meizu/widget/ScrollTextView;->access$000(Lcom/meizu/widget/ScrollTextView;)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v4, v4, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    rsub-int/lit8 v2, v4, 0x0

    .line 175
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v7}, Lcom/meizu/widget/ScrollTextView;->access$100(Lcom/meizu/widget/ScrollTextView;)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v2, v4, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    .line 179
    :cond_2
    if-eqz v2, :cond_7

    .line 180
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v7}, Lcom/meizu/widget/ScrollTextView;->access$200(Lcom/meizu/widget/ScrollTextView;)I

    move-result v7

    iget-object v8, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v8, v8, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v1

    .line 181
    .local v1, newScrollY:I
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget-boolean v4, v4, Lcom/meizu/widget/ScrollTextView;->mCycleEnabled:Z

    if-ne v4, v6, :cond_5

    .line 182
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v4}, Lcom/meizu/widget/ScrollTextView;->access$300(Lcom/meizu/widget/ScrollTextView;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v7, v7, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    if-le v4, v7, :cond_3

    .line 183
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v4, v4, Lcom/meizu/widget/ScrollTextView;->mCount:I

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v7, v7, Lcom/meizu/widget/ScrollTextView;->mItemHeight:I

    mul-int/2addr v4, v7

    add-int/2addr v1, v4

    .line 186
    :cond_3
    add-int/2addr v1, v2

    .line 191
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    iget v4, v4, Lcom/meizu/widget/ScrollTextView;->mOffsetY:I

    add-int/2addr v1, v4

    .line 194
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v4}, Lcom/meizu/widget/ScrollTextView;->access$400(Lcom/meizu/widget/ScrollTextView;)I

    move-result v4

    if-eq v1, v4, :cond_6

    .line 195
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v4}, Lcom/meizu/widget/ScrollTextView;->access$800(Lcom/meizu/widget/ScrollTextView;)Landroid/widget/Scroller;

    move-result-object v4

    iget-object v7, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollX:I
    invoke-static {v7}, Lcom/meizu/widget/ScrollTextView;->access$500(Lcom/meizu/widget/ScrollTextView;)I

    move-result v7

    iget-object v8, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v8}, Lcom/meizu/widget/ScrollTextView;->access$600(Lcom/meizu/widget/ScrollTextView;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mScrollY:I
    invoke-static {v9}, Lcom/meizu/widget/ScrollTextView;->access$700(Lcom/meizu/widget/ScrollTextView;)I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {v4, v7, v8, v5, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 200
    :goto_2
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/ScrollTextView;->postInvalidate()V

    .line 202
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/meizu/widget/ScrollTextView;->access$900(Lcom/meizu/widget/ScrollTextView;)Landroid/view/VelocityTracker;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 203
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    #getter for: Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/meizu/widget/ScrollTextView;->access$900(Lcom/meizu/widget/ScrollTextView;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 204
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x0

    #setter for: Lcom/meizu/widget/ScrollTextView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4, v5}, Lcom/meizu/widget/ScrollTextView;->access$902(Lcom/meizu/widget/ScrollTextView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    :cond_4
    move v4, v6

    .line 206
    goto/16 :goto_0

    .line 188
    :cond_5
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    add-int v7, v1, v2

    invoke-virtual {v4, v7}, Lcom/meizu/widget/ScrollTextView;->getStoppedPos(I)I

    move-result v1

    goto :goto_1

    .line 197
    :cond_6
    iget-object v4, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->this$0:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v4}, Lcom/meizu/widget/ScrollTextView;->setCurrentViewState()V

    goto :goto_2

    .end local v1           #newScrollY:I
    :cond_7
    move v4, v5

    .line 208
    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/widget/ScrollTextView$scrollTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
