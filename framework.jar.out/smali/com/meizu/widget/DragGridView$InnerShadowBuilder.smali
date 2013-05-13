.class Lcom/meizu/widget/DragGridView$InnerShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "DragGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerShadowBuilder"
.end annotation


# instance fields
.field private mPosition:I

.field private mShadowView:Landroid/view/View;

.field final synthetic this$0:Lcom/meizu/widget/DragGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/DragGridView;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "shadowView"
    .parameter "position"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/DragGridView;

    .line 390
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 391
    iput-object p2, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    .line 392
    iput p3, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->mPosition:I

    .line 393
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 397
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 398
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 11
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    const/4 v10, 0x0

    .line 403
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 405
    iget-object v6, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 406
    .local v5, width:I
    iget-object v6, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 407
    .local v1, height:I
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Point;->set(II)V

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 410
    .local v0, frame:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 411
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "frame="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    iget-object v6, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/DragGridView;

    iget v7, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->mPosition:I

    iget-object v8, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/DragGridView;

    #getter for: Lcom/meizu/widget/DragGridView;->mChildWidth:I
    invoke-static {v8}, Lcom/meizu/widget/DragGridView;->access$1000(Lcom/meizu/widget/DragGridView;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/DragGridView;

    #getter for: Lcom/meizu/widget/DragGridView;->mChildHeight:I
    invoke-static {v9}, Lcom/meizu/widget/DragGridView;->access$1100(Lcom/meizu/widget/DragGridView;)I

    move-result v9

    #calls: Lcom/meizu/widget/DragGridView;->getChildLayoutPoint(III)Landroid/graphics/Point;
    invoke-static {v6, v7, v8, v9}, Lcom/meizu/widget/DragGridView;->access$1200(Lcom/meizu/widget/DragGridView;III)Landroid/graphics/Point;

    move-result-object v4

    .line 413
    .local v4, point:Landroid/graphics/Point;
    iget-object v6, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/DragGridView;

    #getter for: Lcom/meizu/widget/DragGridView;->mMotionX:I
    invoke-static {v6}, Lcom/meizu/widget/DragGridView;->access$1300(Lcom/meizu/widget/DragGridView;)I

    move-result v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 414
    .local v2, offsetX:I
    iget-object v6, p0, Lcom/meizu/widget/DragGridView$InnerShadowBuilder;->this$0:Lcom/meizu/widget/DragGridView;

    #getter for: Lcom/meizu/widget/DragGridView;->mMotionY:I
    invoke-static {v6}, Lcom/meizu/widget/DragGridView;->access$1400(Lcom/meizu/widget/DragGridView;)I

    move-result v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 415
    .local v3, offsetY:I
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 416
    return-void
.end method
