.class abstract Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;
.super Ljava/lang/Thread;
.source "PasswordAndSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "checkPasswordClass"
.end annotation


# instance fields
.field private mPasswordStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "password"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 718
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;->mPasswordStr:Ljava/lang/String;

    .line 719
    return-void
.end method


# virtual methods
.method abstract onPassworkLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 725
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$400(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;->mPasswordStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    .line 726
    .local v0, result:Z
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    new-instance v2, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass$1;

    invoke-direct {v2, p0, v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass$1;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$checkPasswordClass;Z)V

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 731
    return-void
.end method
