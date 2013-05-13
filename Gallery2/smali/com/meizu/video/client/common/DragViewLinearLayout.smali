.class public Lcom/meizu/video/client/common/DragViewLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DragViewLinearLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$DragShadowItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getDragView()Landroid/view/View;
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/meizu/video/client/common/DragViewLinearLayout;->getId()I

    move-result v0

    .line 27
    .local v0, id:I
    const v1, 0x7f0d0044

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/meizu/video/client/common/DragViewLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/common/DragViewLinearLayout;->setBackgroundColor(I)V

    .line 33
    :goto_0
    return-object p0

    .line 30
    :cond_0
    const v1, 0x7f02006d

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/common/DragViewLinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getDragViewShowPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public needBackground()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
