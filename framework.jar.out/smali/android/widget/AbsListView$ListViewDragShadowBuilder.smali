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
    .line 7408
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/AbsListView$ListViewDragShadowBuilder;-><init>(Landroid/widget/AbsListView;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 7409
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "needBg"
    .parameter "shadowTouchPoint"

    .prologue
    const/4 v6, 0x0

    .line 7411
    iput-object p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    .line 7412
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 7402
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7403
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 7471
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7413
    iput-boolean p3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 7414
    iput-object p4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 7415
    if-nez p2, :cond_0

    .line 7437
    :goto_0
    return-void

    .line 7416
    :cond_0
    if-eqz p3, :cond_1

    .line 7417
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #getter for: Landroid/widget/AbsListView;->mDragViewBackground:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 7418
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7419
    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7420
    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 7421
    .local v1, padding:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 7422
    .local v2, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 7423
    .local v0, height:I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7424
    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    .line 7425
    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v5, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7427
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #getter for: Landroid/widget/AbsListView;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 7428
    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7430
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #getter for: Landroid/widget/AbsListView;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 7431
    iget-object v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 7434
    .end local v0           #height:I
    .end local v1           #padding:Landroid/graphics/Rect;
    .end local v2           #width:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    .line 7435
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    goto :goto_0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 7453
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_2

    .line 7454
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7456
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7457
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 7458
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_1

    .line 7459
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7462
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7466
    :goto_1
    return-void

    .line 7460
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7461
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 7464
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 7441
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 7442
    iget v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7444
    iget-boolean v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 7445
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 7449
    :goto_0
    return-void

    .line 7447
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetX:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDragOffsetY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4900(Landroid/widget/AbsListView;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 7475
    iput p1, p0, Landroid/widget/AbsListView$ListViewDragShadowBuilder;->mState:I

    .line 7476
    return-void
.end method
