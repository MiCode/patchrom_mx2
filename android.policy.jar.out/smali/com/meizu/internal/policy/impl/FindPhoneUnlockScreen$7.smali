.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;
.super Ljava/lang/Object;
.source "FindPhoneUnlockScreen.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->loadEmergencyCallView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturnButtonClick()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->isCalling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mEmergencyCallView:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$300(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->clearText()V

    .line 382
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #calls: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->showKeypadView()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$400(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V

    .line 383
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$7;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 386
    :cond_0
    return-void
.end method
