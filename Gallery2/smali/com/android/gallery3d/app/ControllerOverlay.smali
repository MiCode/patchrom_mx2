.class public interface abstract Lcom/android/gallery3d/app/ControllerOverlay;
.super Ljava/lang/Object;
.source "ControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    }
.end annotation


# virtual methods
.method public abstract checkHdmiState()V
.end method

.method public abstract finishLoading()V
.end method

.method public abstract getSelectListShow()Z
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hideDlnaButton()V
.end method

.method public abstract hideSelectList(Z)V
.end method

.method public abstract initPreNextVideo()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onResume()V
.end method

.method public abstract playStateChangeUpdateProgress()V
.end method

.method public abstract resetVolumeBar()V
.end method

.method public abstract selectDlnaDevice(I)V
.end method

.method public abstract setAudioTrackCount(I)V
.end method

.method public abstract setBitrateTextSelect(I)V
.end method

.method public abstract setCanGesture(Z)V
.end method

.method public abstract setDlnaDeviceCount(I)V
.end method

.method public abstract setDlnaVideoState(I)V
.end method

.method public abstract setDlnaVolumeProgress(F)V
.end method

.method public abstract setIsDlnaMode(Z)V
.end method

.method public abstract setKeyVolumChange(Z)V
.end method

.method public abstract setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
.end method

.method public abstract setMeizuExt(Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;)V
.end method

.method public abstract setOnLineBitRateCount(I)V
.end method

.method public abstract setTimeTextCount(I)V
.end method

.method public abstract setTimeTextSelect(I)V
.end method

.method public abstract setTimes(II)V
.end method

.method public abstract setTrackSelect(I)V
.end method

.method public abstract setVideoTitle()V
.end method

.method public abstract showDlnaButton()V
.end method

.method public abstract showErrorMessage(Ljava/lang/String;)V
.end method

.method public abstract showLoading()V
.end method

.method public abstract showPaused()V
.end method

.method public abstract showPlaying()V
.end method

.method public abstract updateSelectList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
