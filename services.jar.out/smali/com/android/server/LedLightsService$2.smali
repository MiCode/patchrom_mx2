.class Lcom/android/server/LedLightsService$2;
.super Ljava/lang/Object;
.source "LedLightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LedLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LedLightsService;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LedLightsService;->setTemporarySettingEnable(Z)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$300(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #calls: Lcom/android/server/LedLightsService;->isLedLightLocked()Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$900(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    const-string v0, "LedLightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCancelRunnable setKeyGuardLight mIsKeyguardMenuEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$1000(Lcom/android/server/LedLightsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$1000(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LedLightsService;->setKeyGuardLight(Z)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1100(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    .line 262
    iget-object v0, p0, Lcom/android/server/LedLightsService$2;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1200(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    goto :goto_0
.end method
