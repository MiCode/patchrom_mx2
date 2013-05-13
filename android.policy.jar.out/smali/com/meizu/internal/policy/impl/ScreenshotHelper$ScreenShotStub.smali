.class Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;
.super Landroid/app/IUnlockScreenShotReceiver$Stub;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenShotStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-direct {p0}, Landroid/app/IUnlockScreenShotReceiver$Stub;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method


# virtual methods
.method public finished(Landroid/content/ComponentName;)V
    .locals 7
    .parameter "topActivity"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 140
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui.statusbar.phone_meizu.PhoneStatusBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_0
    :goto_0
    const-string v1, "Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screenshot: finished and time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topActivity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, retPackage:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 148
    :cond_3
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public notFound(Ljava/lang/String;)V
    .locals 4
    .parameter "description"

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    const-string v0, "Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screenshot: notFound. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public returnForTranslucent(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "topActivity"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenShotStub;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    #getter for: Lcom/meizu/internal/policy/impl/ScreenshotHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->access$000(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    const-string v0, "Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screenshot: returnForTranslucent and spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", topActivity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method
