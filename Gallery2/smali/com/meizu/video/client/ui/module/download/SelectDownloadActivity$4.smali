.class Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$4;
.super Ljava/lang/Object;
.source "SelectDownloadActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity$4;->this$0:Lcom/meizu/video/client/ui/module/download/SelectDownloadActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionItemType(Landroid/view/MenuItem;)I
    .locals 2
    .parameter "menuItem"

    .prologue
    .line 817
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 818
    .local v0, id:I
    const v1, 0x7f0d01b0

    if-ne v0, v1, :cond_0

    .line 819
    const/4 v1, 0x1

    .line 821
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActionItemDragEnd()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method public onActionItemDragStart()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onActionItemDrop(Landroid/view/MenuItem;IJ)V
    .locals 0
    .parameter "menuItem"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 809
    return-void
.end method
