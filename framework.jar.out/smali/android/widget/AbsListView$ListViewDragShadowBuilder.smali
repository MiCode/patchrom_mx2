.class Landroid/widget/AbsListView$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    .line 7433
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 7434
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "needBg"
    .parameter "shadowTouchPoint"

    .prologue
    .line 7436
    iput-object p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    .line 7437
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 7427
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7428
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 7523
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7438
    iput-boolean p3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7439
    iput-object p4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 7440
    if-nez p2, :cond_1

    .line 7482
    :cond_0
    :goto_0
    return-void

    .line 7441
    :cond_1
    if-eqz p3, :cond_3

    .line 7442
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/AbsListView;->mDragViewBackground:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 7443
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7444
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7445
    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7446
    .local v4, padding:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 7447
    .local v5, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 7448
    .local v1, height:I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7449
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7450
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7452
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 7453
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7455
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 7456
    iget-object v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7463
    .end local v1           #height:I
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v5           #width:I
    :goto_1
    const/4 v6, 0x0

    #setter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/AbsListView;->access$4902(Landroid/widget/AbsListView;I)I

    .line 7464
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 7467
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 7468
    .local v2, listLocation:[I
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 7470
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 7471
    .local v0, dragLocation:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7473
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v6, v7, :cond_2

    .line 7474
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    #setter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/AbsListView;->access$4902(Landroid/widget/AbsListView;I)I

    .line 7475
    iget v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 7476
    .local v3, maxDragScrollY:I
    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    #setter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {p1, v6}, Landroid/widget/AbsListView;->access$4902(Landroid/widget/AbsListView;I)I

    .line 7479
    .end local v3           #maxDragScrollY:I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    goto/16 :goto_0

    .line 7459
    .end local v0           #dragLocation:[I
    .end local v2           #listLocation:[I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7460
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    goto :goto_1
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 7498
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_2

    .line 7499
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7501
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7502
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7503
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_1

    .line 7504
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7518
    :goto_1
    return-void

    .line 7505
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7506
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7509
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 7510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7511
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7512
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 7515
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 7486
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 7487
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7489
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 7490
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7494
    :goto_0
    return-void

    .line 7492
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$5000(Landroid/widget/AbsListView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5100(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 7527
    iput p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7528
    return-void
.end method
