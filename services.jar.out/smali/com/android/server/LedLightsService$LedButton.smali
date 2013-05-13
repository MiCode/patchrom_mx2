.class Lcom/android/server/LedLightsService$LedButton;
.super Ljava/lang/Object;
.source "LedLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LedLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LedButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LedLightsService$LedButton$TouchThread;
    }
.end annotation


# instance fields
.field private mButtonType:I

.field private mCurrentLightSetting:Lcom/android/server/LedLightsService$LightSetting;

.field private mLedButtonSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LedLightsService$LightSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mLedLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LedLightsService$LedLight;",
            ">;"
        }
    .end annotation
.end field

.field private mLedLocked:Z

.field mPrepareSetting:Lcom/android/server/LedLightsService$LightSetting;

.field mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

.field private mTouchThread:Lcom/android/server/LedLightsService$LedButton$TouchThread;

.field final synthetic this$0:Lcom/android/server/LedLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LedLightsService;II)V
    .locals 4
    .parameter
    .parameter "lightsnumber"
    .parameter "buttonType"

    .prologue
    const/4 v3, 0x0

    .line 411
    iput-object p1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    .line 407
    new-instance v1, Lcom/android/server/LedLightsService$LightSetting;

    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct {v1, v2}, Lcom/android/server/LedLightsService$LightSetting;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mPrepareSetting:Lcom/android/server/LedLightsService$LightSetting;

    .line 408
    new-instance v1, Lcom/android/server/LedLightsService$LightSetting;

    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct {v1, v2}, Lcom/android/server/LedLightsService$LightSetting;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    .line 409
    iput-boolean v3, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mTouchThread:Lcom/android/server/LedLightsService$LedButton$TouchThread;

    .line 412
    iput p3, p0, Lcom/android/server/LedLightsService$LedButton;->mButtonType:I

    .line 413
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/LedLightsService$LedLight;

    invoke-direct {v2, p1, v0, p3}, Lcom/android/server/LedLightsService$LedLight;-><init>(Lcom/android/server/LedLightsService;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    if-nez p3, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mPrepareSetting:Lcom/android/server/LedLightsService$LightSetting;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v3, v2, v3

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v1, v2}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    .line 421
    :cond_1
    :goto_1
    return-void

    .line 418
    :cond_2
    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mPrepareSetting:Lcom/android/server/LedLightsService$LightSetting;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v1, v2}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1300(Lcom/android/server/LedLightsService$LedButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/server/LedLightsService$LedButton;->toucheFeedBack()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/LedLightsService$LedButton;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/LedLightsService$LedButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    return p1
.end method

.method private checkPriority(Ljava/util/ArrayList;Lcom/android/server/LedLightsService$LightSetting;)Z
    .locals 8
    .parameter
    .parameter "ls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LedLightsService$LightSetting;",
            ">;",
            "Lcom/android/server/LedLightsService$LightSetting;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, mLightSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LedLightsService$LightSetting;>;"
    const/4 v6, 0x0

    .line 490
    invoke-static {}, Lcom/android/server/LedLightsService;->access$1800()[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    .line 492
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 493
    #getter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/LedLightsService;->access$1800()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 494
    iput v1, p2, Lcom/android/server/LedLightsService$LightSetting;->priority:I

    .line 501
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 502
    .local v4, size:I
    const/4 v0, 0x0

    .line 503
    .local v0, found:Z
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 504
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LedLightsService$LightSetting;->access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 505
    const/4 v0, 0x1

    .line 510
    :cond_1
    if-lez v4, :cond_2

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1700(Lcom/android/server/LedLightsService$LightSetting;)I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_2

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1700(Lcom/android/server/LedLightsService$LightSetting;)I

    move-result v5

    const/4 v7, 0x7

    if-ne v5, v7, :cond_2

    .line 514
    :cond_2
    const/4 v2, -0x1

    .line 515
    .local v2, insertPos:I
    if-nez v0, :cond_a

    .line 516
    move v1, v4

    :goto_2
    if-lez v1, :cond_5

    .line 517
    iget v7, p2, Lcom/android/server/LedLightsService$LightSetting;->priority:I

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    iget v5, v5, Lcom/android/server/LedLightsService$LightSetting;->priority:I

    if-le v7, v5, :cond_9

    .line 518
    if-eqz v1, :cond_3

    .line 519
    move v2, v1

    .line 520
    :cond_3
    if-lt v2, v4, :cond_4

    .line 521
    move v2, v4

    .line 522
    :cond_4
    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 527
    :cond_5
    if-gez v2, :cond_6

    .line 528
    invoke-virtual {p1, v6, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 529
    iput-object p2, p0, Lcom/android/server/LedLightsService$LedButton;->mCurrentLightSetting:Lcom/android/server/LedLightsService$LightSetting;

    .line 541
    :cond_6
    if-gez v2, :cond_b

    const/4 v5, 0x1

    :goto_3
    return v5

    .line 497
    .end local v0           #found:Z
    .end local v2           #insertPos:I
    .end local v4           #size:I
    :cond_7
    const/16 v5, 0x64

    iput v5, p2, Lcom/android/server/LedLightsService$LightSetting;->priority:I

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .restart local v0       #found:Z
    .restart local v4       #size:I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    .restart local v2       #insertPos:I
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 532
    :cond_a
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/server/LedLightsService$LightSetting;->access$1602(Lcom/android/server/LedLightsService$LightSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1700(Lcom/android/server/LedLightsService$LightSetting;)I

    move-result v7

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {v5, v7}, Lcom/android/server/LedLightsService$LightSetting;->access$1702(Lcom/android/server/LedLightsService$LightSetting;I)I

    .line 534
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    iget v7, p2, Lcom/android/server/LedLightsService$LightSetting;->priority:I

    iput v7, v5, Lcom/android/server/LedLightsService$LightSetting;->priority:I

    .line 535
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v5, v7}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    .line 536
    const/4 v1, 0x0

    :goto_4
    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 537
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v5}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v5

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {p2}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v7

    aget v7, v7, v1

    aput v7, v5, v1

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    move v5, v6

    .line 541
    goto :goto_3
.end method

.method private setNormalMode([I)V
    .locals 0
    .parameter "lights"

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/server/LedLightsService$LedButton;->turnOn()V

    .line 734
    return-void
.end method

.method private shouldApply()Z
    .locals 3

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, isKeyguardShow:Z
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    invoke-static {}, Lcom/android/server/LedLightsService;->access$2000()Landroid/app/KeyguardManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$000(Lcom/android/server/LedLightsService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$2002(Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 567
    :cond_0
    invoke-static {}, Lcom/android/server/LedLightsService;->access$2000()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedAndNotHide()Z

    move-result v0

    .line 571
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 572
    :cond_1
    const/4 v1, 0x0

    .line 574
    :goto_1
    return v1

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$300(Lcom/android/server/LedLightsService;)Z

    move-result v0

    goto :goto_0

    .line 574
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private toucheFeedBack()V
    .locals 2

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    .line 677
    new-instance v0, Lcom/android/server/LedLightsService$LedButton$TouchThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LedLightsService$LedButton$TouchThread;-><init>(Lcom/android/server/LedLightsService$LedButton;Lcom/android/server/LedLightsService$1;)V

    iput-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->mTouchThread:Lcom/android/server/LedLightsService$LedButton$TouchThread;

    .line 678
    iget-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->mTouchThread:Lcom/android/server/LedLightsService$LedButton$TouchThread;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton$TouchThread;->start()V

    goto :goto_0
.end method

.method private updateRotationMode(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LedLightsService$LightSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mLightSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LedLightsService$LightSetting;>;"
    const/4 v2, 0x0

    .line 632
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/LedLightsService$LightSetting;->access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LedLightsService$LightSetting;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {v1}, Lcom/android/server/LedLightsService$LightSetting;->access$1700(Lcom/android/server/LedLightsService$LightSetting;)I

    move-result v1

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {v0, v1}, Lcom/android/server/LedLightsService$LightSetting;->access$1702(Lcom/android/server/LedLightsService$LightSetting;I)I

    .line 635
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LedLightsService$LightSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, mLightSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LedLightsService$LightSetting;>;"
    invoke-virtual {p0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    .line 547
    return-void
.end method

.method public applyMode()V
    .locals 2

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    if-eqz v0, :cond_0

    .line 552
    monitor-exit p0

    .line 560
    :goto_0
    return-void

    .line 553
    :cond_0
    new-instance v0, Lcom/android/server/LedLightsService$LightSetting;

    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct {v0, v1}, Lcom/android/server/LedLightsService$LightSetting;-><init>(Lcom/android/server/LedLightsService;)V

    iput-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    .line 554
    iget-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    iget-object v1, p0, Lcom/android/server/LedLightsService$LedButton;->mPrepareSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v1}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v1

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v0, v1}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    .line 555
    invoke-direct {p0}, Lcom/android/server/LedLightsService$LedButton;->shouldApply()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    monitor-exit p0

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 557
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v0}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LedLightsService$LedButton;->setNormalMode([I)V

    .line 558
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isLedLocked()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLocked:Z

    return v0
.end method

.method public setHardwareFlash([III)V
    .locals 5
    .parameter "id"
    .parameter "lifeCycle"
    .parameter "slope"

    .prologue
    .line 737
    if-nez p1, :cond_1

    .line 746
    :cond_0
    return-void

    .line 739
    :cond_1
    array-length v1, p1

    .line 740
    .local v1, length:I
    invoke-virtual {p0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 741
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2, p3}, Lcom/android/server/LedLightsService;->setHardWareFlashMode(I)V

    .line 742
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mNativePointer:I
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$2500(Lcom/android/server/LedLightsService;)I

    move-result v2

    const/16 v3, 0x96

    #calls: Lcom/android/server/LedLightsService;->setBrightness_native(II)V
    invoke-static {v2, v3}, Lcom/android/server/LedLightsService;->access$2600(II)V

    .line 743
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 744
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LedLightsService$LedLight;

    iget-object v3, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mHardwareMode:I
    invoke-static {v3}, Lcom/android/server/LedLightsService;->access$2700(Lcom/android/server/LedLightsService;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/LedLightsService$LedLight;->setFlashing(III)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setLedLights([IIII)V
    .locals 4
    .parameter "id"
    .parameter "lifeCycle"
    .parameter "delay"
    .parameter "current"

    .prologue
    .line 749
    if-nez p1, :cond_1

    .line 756
    :cond_0
    return-void

    .line 751
    :cond_1
    array-length v1, p1

    .line 752
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 753
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/LedLightsService$LedLight;->setLedLight(III)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public turnOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 659
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/LedLightsService;->setHardWareFlashMode(I)V

    .line 660
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v2}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v2

    array-length v0, v2

    .line 662
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 663
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService$LedLight;->turnOffLight()V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v0           #count:I
    .end local v1           #index:I
    :cond_0
    return-void
.end method

.method public turnOffAll()V
    .locals 3

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 481
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v2}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/LedLightsService$LedButton;->mButtonType:I

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 481
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-object v2, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v2}, Lcom/android/server/LedLightsService$LedLight;->turnOffLight()V

    goto :goto_1

    .line 486
    :cond_1
    return-void
.end method

.method public turnOn()V
    .locals 7

    .prologue
    .line 639
    iget-object v5, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    if-eqz v5, :cond_3

    .line 640
    iget-object v5, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v5}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v5

    array-length v3, v5

    .line 641
    .local v3, settingcount:I
    const/4 v4, 0x5

    .line 642
    .local v4, totalCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 643
    const/4 v2, 0x0

    .line 644
    .local v2, needTurnOn:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 645
    iget-object v5, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v5}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v5

    aget v5, v5, v0

    if-ne v1, v5, :cond_0

    .line 646
    iget-object v5, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v5}, Lcom/android/server/LedLightsService$LedLight;->turnOnLight()V

    .line 647
    const/4 v2, 0x1

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    :cond_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v5}, Lcom/android/server/LedLightsService$LedLight;->getCurrent()I

    move-result v5

    if-eqz v5, :cond_2

    .line 652
    iget-object v5, p0, Lcom/android/server/LedLightsService$LedButton;->mLedLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LedLightsService$LedLight;

    invoke-virtual {v5}, Lcom/android/server/LedLightsService$LedLight;->turnOffLight()V

    .line 642
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #needTurnOn:Z
    .end local v3           #settingcount:I
    .end local v4           #totalCount:I
    :cond_3
    return-void
.end method

.method public updateButtonLight(Ljava/lang/String;[IIZ)V
    .locals 10
    .parameter "appId"
    .parameter "lightsId"
    .parameter "mode"
    .parameter "temporary"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 424
    if-ne p3, v7, :cond_3

    .line 425
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 426
    .local v5, size:I
    const/4 v4, -0x1

    .line 427
    .local v4, removeIndex:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 428
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1600(Lcom/android/server/LedLightsService$LightSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    move v4, v2

    .line 433
    :cond_0
    if-eq v4, v7, :cond_1

    .line 434
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 435
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/server/LedLightsService$LedButton;->updateRotationMode(Ljava/util/ArrayList;)V

    .line 438
    :cond_1
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/android/server/LedLightsService$LedButton;->apply(Ljava/util/ArrayList;)V

    .line 477
    .end local v2           #index:I
    .end local v4           #removeIndex:I
    .end local v5           #size:I
    :goto_1
    return-void

    .line 427
    .restart local v2       #index:I
    .restart local v4       #removeIndex:I
    .restart local v5       #size:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v2           #index:I
    .end local v4           #removeIndex:I
    .end local v5           #size:I
    :cond_3
    new-instance v3, Lcom/android/server/LedLightsService$LightSetting;

    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct {v3, v6}, Lcom/android/server/LedLightsService$LightSetting;-><init>(Lcom/android/server/LedLightsService;)V

    .line 443
    .local v3, ls:Lcom/android/server/LedLightsService$LightSetting;
    #setter for: Lcom/android/server/LedLightsService$LightSetting;->id:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/LedLightsService$LightSetting;->access$1602(Lcom/android/server/LedLightsService$LightSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    #setter for: Lcom/android/server/LedLightsService$LightSetting;->mode:I
    invoke-static {v3, p3}, Lcom/android/server/LedLightsService$LightSetting;->access$1702(Lcom/android/server/LedLightsService$LightSetting;I)I

    .line 445
    if-eqz p2, :cond_6

    .line 446
    aget v6, p2, v8

    if-ne v6, v7, :cond_5

    .line 447
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mRunningSetting:Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v6

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3, v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    .line 468
    :cond_4
    :goto_2
    if-ne p3, v9, :cond_8

    .line 469
    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/server/LedLightsService$LedButton;->setHardwareFlash([III)V

    goto :goto_1

    .line 449
    :cond_5
    array-length v0, p2

    .line 450
    .local v0, count:I
    new-array v6, v0, [I

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3, v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    .line 451
    const/4 v2, 0x0

    .restart local v2       #index:I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 452
    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v6

    aget v7, p2, v2

    aput v7, v6, v2

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 457
    .end local v0           #count:I
    .end local v2           #index:I
    :cond_6
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 458
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v6

    array-length v1, v6

    .line 459
    .local v1, currentCount:I
    new-array v6, v1, [I

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3, v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    .line 460
    const/4 v2, 0x0

    .restart local v2       #index:I
    :goto_4
    if-ge v2, v1, :cond_4

    .line 461
    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LedLightsService$LightSetting;

    #getter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1500(Lcom/android/server/LedLightsService$LightSetting;)[I

    move-result-object v6

    aget v6, v6, v2

    aput v6, v7, v2

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 464
    .end local v1           #currentCount:I
    .end local v2           #index:I
    :cond_7
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    #setter for: Lcom/android/server/LedLightsService$LightSetting;->lights:[I
    invoke-static {v3, v6}, Lcom/android/server/LedLightsService$LightSetting;->access$1502(Lcom/android/server/LedLightsService$LightSetting;[I)[I

    goto :goto_2

    .line 472
    :cond_8
    iput-object v3, p0, Lcom/android/server/LedLightsService$LedButton;->mPrepareSetting:Lcom/android/server/LedLightsService$LightSetting;

    .line 473
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v3}, Lcom/android/server/LedLightsService$LedButton;->checkPriority(Ljava/util/ArrayList;Lcom/android/server/LedLightsService$LightSetting;)Z

    .line 476
    iget-object v6, p0, Lcom/android/server/LedLightsService$LedButton;->mLedButtonSettings:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/android/server/LedLightsService$LedButton;->apply(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 464
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method
