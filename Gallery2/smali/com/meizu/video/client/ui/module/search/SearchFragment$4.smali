.class Lcom/meizu/video/client/ui/module/search/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

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
    .line 506
    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    .line 507
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mListIsScrollBottom:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2502(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mListIsScrollBottom:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2502(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    .line 486
    if-eq p2, v2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    if-nez p2, :cond_0

    .line 490
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mListIsScrollBottom:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mIsLoading:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1700(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalPage:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCurrentSearchPage:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #calls: Lcom/meizu/video/client/ui/module/search/SearchFragment;->initData(I)V
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2300(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)V

    goto :goto_0
.end method
