.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->loadEmergencyCallView()V
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
    .line 415
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturnButtonClick()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->isCalling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->clearText()V

    .line 419
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->showKeypadView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$700(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V

    .line 420
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$5;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 423
    :cond_0
    return-void
.end method
