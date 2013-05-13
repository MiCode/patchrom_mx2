.class Lcom/android/server/LedLightsService$3;
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
    .line 307
    iput-object p1, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 311
    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mCurrentBrightness:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$200(Lcom/android/server/LedLightsService;)I

    move-result v0

    .line 312
    .local v0, brightness:I
    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$100(Lcom/android/server/LedLightsService;)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$100(Lcom/android/server/LedLightsService;)I

    move-result v2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$100(Lcom/android/server/LedLightsService;)I

    move-result v2

    div-int/lit8 v1, v2, 0x3

    .line 316
    .local v1, minbrightness:I
    :goto_1
    if-le v0, v1, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsDraging:Z
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$1400(Lcom/android/server/LedLightsService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    iget-object v3, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v3}, Lcom/android/server/LedLightsService;->access$100(Lcom/android/server/LedLightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    goto :goto_0

    .line 314
    .end local v1           #minbrightness:I
    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    .line 322
    .restart local v1       #minbrightness:I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 323
    iget-object v2, p0, Lcom/android/server/LedLightsService$3;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2, v0}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    .line 325
    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v2

    goto :goto_1
.end method
