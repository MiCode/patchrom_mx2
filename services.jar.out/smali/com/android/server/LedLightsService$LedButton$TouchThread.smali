.class Lcom/android/server/LedLightsService$LedButton$TouchThread;
.super Ljava/lang/Thread;
.source "LedLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedLightsService$LedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchThread"
.end annotation


# instance fields
.field current:I

.field final synthetic this$1:Lcom/android/server/LedLightsService$LedButton;


# direct methods
.method private constructor <init>(Lcom/android/server/LedLightsService$LedButton;)V
    .locals 1
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 682
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LedLightsService$LedButton;Lcom/android/server/LedLightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/android/server/LedLightsService$LedButton$TouchThread;-><init>(Lcom/android/server/LedLightsService$LedButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 684
    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 686
    :goto_0
    iget v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 687
    iget v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    .line 688
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 689
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    #getter for: Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/LedLightsService$LedButton;->access$2200(Lcom/android/server/LedLightsService$LedButton;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v1}, Lcom/android/server/LedLightsService$LedLight;->getCurrent()I

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    #getter for: Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/LedLightsService$LedButton;->access$2200(Lcom/android/server/LedLightsService$LedButton;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LedLightsService$LedLight;

    iget v2, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/LedLightsService$LedLight;->setLedLight(III)V

    .line 688
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 695
    :cond_1
    const-wide/16 v1, 0x14

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v1

    goto :goto_0

    .line 713
    :cond_2
    const-wide/16 v1, 0x19

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    .end local v0           #index:I
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 706
    iget v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    .line 707
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_3
    if-ge v0, v4, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    #getter for: Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/LedLightsService$LedButton;->access$2200(Lcom/android/server/LedLightsService$LedButton;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v1}, Lcom/android/server/LedLightsService$LedLight;->getCurrent()I

    move-result v1

    if-eqz v1, :cond_4

    .line 709
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    #getter for: Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/LedLightsService$LedButton;->access$2200(Lcom/android/server/LedLightsService$LedButton;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LedLightsService$LedLight;

    iget v2, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->current:I

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/LedLightsService$LedLight;->setLedLight(III)V

    .line 707
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 721
    .end local v0           #index:I
    :cond_5
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    #setter for: Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z
    invoke-static {v1, v3}, Lcom/android/server/LedLightsService$LedButton;->access$2302(Lcom/android/server/LedLightsService$LedButton;Z)Z

    .line 722
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    iget-object v1, v1, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    iget-object v1, v1, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsTemporarySetting:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$2400(Lcom/android/server/LedLightsService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 729
    :cond_6
    :goto_4
    return-void

    .line 724
    :cond_7
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    iget-object v1, v1, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$300(Lcom/android/server/LedLightsService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 725
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    iget-object v1, v1, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    iget-object v2, v2, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$1000(Lcom/android/server/LedLightsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/LedLightsService;->setKeyGuardLight(Z)V

    goto :goto_4

    .line 727
    :cond_8
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton$TouchThread;->this$1:Lcom/android/server/LedLightsService$LedButton;

    invoke-virtual {v1}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    goto :goto_4

    .line 714
    .restart local v0       #index:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method
