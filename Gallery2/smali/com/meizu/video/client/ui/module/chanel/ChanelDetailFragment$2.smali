.class Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;
.super Ljava/lang/Object;
.source "ChanelDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 355
    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    .line 356
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listIsScrollBottom:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1602(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listCurrentIndex:I
    invoke-static {v0, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1802(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I

    .line 361
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listIsScrollBottom:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1602(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    .line 335
    if-eq p2, v2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-nez p2, :cond_0

    .line 341
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listIsScrollBottom:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1600(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->currentChannelDetailPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->access$1700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)V

    goto :goto_0
.end method
