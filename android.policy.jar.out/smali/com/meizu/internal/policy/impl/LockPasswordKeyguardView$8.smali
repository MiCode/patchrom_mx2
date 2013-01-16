.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;
.super Ljava/lang/Object;
.source "LockPasswordKeyguardView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDeviceChanged(I)V
    .locals 0
    .parameter "isPluged"

    .prologue
    .line 1396
    return-void
.end method

.method public onDlnaDeviceChanged(Z)V
    .locals 0
    .parameter "isForgeLocalDevice"

    .prologue
    .line 1408
    return-void
.end method

.method public onDlnaRemoteVolumeChanged(F)V
    .locals 0
    .parameter "remoteVolume"

    .prologue
    .line 1411
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onDoubleClickHome()V

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onDoubleClickHome()V

    goto :goto_0
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMetaChanged()V

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMetaChanged()V

    goto :goto_0
.end method

.method public onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    goto :goto_0
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMusicClientClear()V

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onMusicClientClear()V

    goto :goto_0
.end method

.method public onMusicVolumeChanged(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 1384
    return-void
.end method

.method public onNameStateChanged()V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onNameStateChanged()V

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onNameStateChanged()V

    goto :goto_0
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaybackComplete()V

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaybackComplete()V

    goto :goto_0
.end method

.method public onPlaystateChanged()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mLockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaystateChanged()V

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$8;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1600(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPlaystateChanged()V

    goto :goto_0
.end method
