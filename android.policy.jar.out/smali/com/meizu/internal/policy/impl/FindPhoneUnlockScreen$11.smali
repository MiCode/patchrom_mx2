.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;
.super Landroid/os/Handler;
.source "FindPhoneUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;
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
    .line 625
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 628
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 630
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$2000(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mFlymeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$1800(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$11;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->updateUserName()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$2100(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
