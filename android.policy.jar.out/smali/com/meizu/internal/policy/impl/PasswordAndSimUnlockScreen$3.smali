.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 182
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$3;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showEmergencyCallView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$500(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    goto :goto_0
.end method
