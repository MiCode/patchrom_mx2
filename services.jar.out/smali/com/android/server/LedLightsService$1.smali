.class Lcom/android/server/LedLightsService$1;
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
    .line 222
    iput-object p1, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$300(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsMenuTempEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$400(Lcom/android/server/LedLightsService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedLightsService;->setMenuEnable(ZZ)V

    .line 229
    iget-object v0, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsBackTempEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$500(Lcom/android/server/LedLightsService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedLightsService;->setBackEnable(ZZ)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsMenuEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$600(Lcom/android/server/LedLightsService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedLightsService;->setMenuEnable(ZZ)V

    .line 232
    iget-object v0, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsBackEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$700(Lcom/android/server/LedLightsService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/LedLightsService$1;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedLightsService;->setBackEnable(ZZ)V

    goto :goto_0
.end method
