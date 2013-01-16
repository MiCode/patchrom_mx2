.class Lcom/android/internal/widget/MzActionBarContainer$2;
.super Lcom/android/internal/app/IDockActionCallback$Stub;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MzActionBarContainer;->dock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Lcom/android/internal/app/IDockActionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEvent(II)V
    .locals 6
    .parameter "event"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    packed-switch p1, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    #getter for: Lcom/android/internal/widget/MzActionBarContainer;->mActionItemList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$000(Lcom/android/internal/widget/MzActionBarContainer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/DockActionItem;

    .line 272
    .local v1, item:Lcom/android/internal/app/DockActionItem;
    iget v3, v1, Lcom/android/internal/app/DockActionItem;->mItemId:I

    if-ne v3, p2, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    #getter for: Lcom/android/internal/widget/MzActionBarContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 274
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    #getter for: Lcom/android/internal/widget/MzActionBarContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/widget/MzActionBarContainer;->access$100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
