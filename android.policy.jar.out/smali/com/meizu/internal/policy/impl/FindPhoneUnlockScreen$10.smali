.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;
.super Ljava/lang/Thread;
.source "FindPhoneUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->updateUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x3e9

    const/16 v4, 0x3ea

    .line 601
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->getFlymeName()I
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1900(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)I

    move-result v0

    .line 602
    .local v0, err:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    if-nez v0, :cond_1

    .line 604
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 608
    const-string v1, "FindPhone"

    const-string v2, "failed to update flymeName and open GPSR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->openGPRSAndEnableNetwork()V
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1400(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    .line 610
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 611
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget v2, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->count:I

    goto :goto_0

    .line 612
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget v1, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->count:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 613
    const-string v1, "FindPhone"

    const-string v2, "failed to update flymeName and try again after half-min"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget v2, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->count:I

    .line 615
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$10;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
