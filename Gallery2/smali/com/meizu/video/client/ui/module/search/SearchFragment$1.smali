.class Lcom/meizu/video/client/ui/module/search/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/search/SearchFragment;->initView(Landroid/view/View;)V
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
    .line 231
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 260
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 258
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, 0x3

    .line 233
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$002(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCachedFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->checkDataAndUpdateView()V

    .line 250
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_1
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$202(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v1, 0x1

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I

    .line 246
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
