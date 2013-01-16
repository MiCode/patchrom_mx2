.class Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientDragShadowBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 2356
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 2357
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2358
    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 2362
    invoke-virtual {p0}, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 2363
    .local v0, view:Lcom/meizu/widget/RecipientEdit$ItemView;
    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit$ItemView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2365
    iget v1, v0, Lcom/meizu/widget/RecipientEdit$ItemView;->mMotionX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2366
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$DragInfo;

    move-result-object v1

    iget v2, v0, Lcom/meizu/widget/RecipientEdit$ItemView;->mMotionX:I

    iput v2, v1, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetX:I

    .line 2367
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientDragShadowBuilder;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDragInfo:Lcom/meizu/widget/RecipientEdit$DragInfo;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2500(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$DragInfo;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/meizu/widget/RecipientEdit$DragInfo;->mOffSetY:I

    .line 2371
    :goto_0
    return-void

    .line 2369
    :cond_0
    const-string v1, "RecipientEdit"

    const-string v2, "Asked for drag thumb metrics but no view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
