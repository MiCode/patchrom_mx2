.class Lcom/android/server/LedLightsService$4;
.super Landroid/content/BroadcastReceiver;
.source "LedLightsService.java"


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
    .line 802
    iput-object p1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 806
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #setter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v0, v3}, Lcom/android/server/LedLightsService;->access$802(Lcom/android/server/LedLightsService;Z)Z

    .line 807
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v0, v2}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    .line 812
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1100(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 813
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1200(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 837
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.KEYGUARD_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 838
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #setter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v0, v2}, Lcom/android/server/LedLightsService;->access$302(Lcom/android/server/LedLightsService;Z)Z

    .line 839
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 869
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #setter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v0, v3}, Lcom/android/server/LedLightsService;->access$1902(Lcom/android/server/LedLightsService;Z)Z

    .line 871
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1100(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 872
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1200(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 873
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsBackEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$700(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedLightsService;->setBackEnable(ZZ)V

    .line 874
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsMenuEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$600(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LedLightsService;->setMenuEnable(ZZ)V

    .line 875
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$300(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$1000(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LedLightsService;->setKeyGuardLight(Z)V

    goto/16 :goto_0

    .line 814
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #setter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v0, v2}, Lcom/android/server/LedLightsService;->access$802(Lcom/android/server/LedLightsService;Z)Z

    .line 816
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSettingMaxBrightness:I
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$100(Lcom/android/server/LedLightsService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    .line 820
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v0, v2}, Lcom/android/server/LedLightsService;->setHardWareFlashMode(I)V

    .line 822
    invoke-static {}, Lcom/android/server/LedLightsService;->access$2000()Landroid/app/KeyguardManager;

    move-result-object v0

    if-nez v0, :cond_5

    .line 823
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$000(Lcom/android/server/LedLightsService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$2002(Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 824
    :cond_5
    invoke-static {}, Lcom/android/server/LedLightsService;->access$2000()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedAndNotHide()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 825
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$1000(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LedLightsService;->setKeyGuardLight(Z)V

    goto/16 :goto_1

    .line 827
    :cond_6
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v0}, Lcom/android/server/LedLightsService;->isTemporarySettingEnable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 828
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1100(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    .line 829
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1200(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->applyMode()V

    goto/16 :goto_1

    .line 831
    :cond_7
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsBackTempEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$500(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/LedLightsService;->setBackEnable(ZZ)V

    .line 832
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsMenuTempEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$400(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/LedLightsService;->setMenuEnable(ZZ)V

    goto/16 :goto_1

    .line 848
    :cond_8
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsBackTempEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$500(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/LedLightsService;->setBackEnable(ZZ)V

    .line 849
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsMenuTempEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$400(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/LedLightsService;->setMenuEnable(ZZ)V

    goto/16 :goto_2

    .line 851
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.KEYGUARD_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 852
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #setter for: Lcom/android/server/LedLightsService;->mIsKeyguard:Z
    invoke-static {v0, v3}, Lcom/android/server/LedLightsService;->access$302(Lcom/android/server/LedLightsService;Z)Z

    .line 853
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1900(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsScreenOff:Z
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$800(Lcom/android/server/LedLightsService;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 858
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    invoke-virtual {v0, v2}, Lcom/android/server/LedLightsService;->setBrightness(I)V

    .line 859
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mMenuButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1100(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 860
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mBackButtonLight:Lcom/android/server/LedLightsService$LedButton;
    invoke-static {v0}, Lcom/android/server/LedLightsService;->access$1200(Lcom/android/server/LedLightsService;)Lcom/android/server/LedLightsService$LedButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LedLightsService$LedButton;->turnOffAll()V

    .line 864
    :goto_3
    const-string v0, "LedLightsService"

    const-string v1, "Intent.ACTION_KEYGUARD_LOCK  finsih"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 862
    :cond_a
    iget-object v0, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    iget-object v1, p0, Lcom/android/server/LedLightsService$4;->this$0:Lcom/android/server/LedLightsService;

    #getter for: Lcom/android/server/LedLightsService;->mIsKeyguardMenuEnable:Z
    invoke-static {v1}, Lcom/android/server/LedLightsService;->access$1000(Lcom/android/server/LedLightsService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LedLightsService;->setKeyGuardLight(Z)V

    goto :goto_3
.end method
