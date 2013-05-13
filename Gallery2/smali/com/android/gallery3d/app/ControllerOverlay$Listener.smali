.class public interface abstract Lcom/android/gallery3d/app/ControllerOverlay$Listener;
.super Ljava/lang/Object;
.source "ControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract doDlnaSeek(J)V
.end method

.method public abstract getAudioTrackName(I)Ljava/lang/String;
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getDeviceListName()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDlnaClientPos()I
.end method

.method public abstract getDlnaDeviceCount()I
.end method

.method public abstract getIsPrepareFinish()Z
.end method

.method public abstract getIsSingleVideo()Z
.end method

.method public abstract getTimeTextCount()I
.end method

.method public abstract getTimeTextName(I)Ljava/lang/String;
.end method

.method public abstract getVideoCurPosition()J
.end method

.method public abstract getVideoDuration()J
.end method

.method public abstract getZoomLevelList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSeeking()Z
.end method

.method public abstract onHidden()V
.end method

.method public abstract onPlayPause()V
.end method

.method public abstract onSeekEnd(I)V
.end method

.method public abstract onSeekMove(I)V
.end method

.method public abstract onShown()V
.end method

.method public abstract selectDlnaDevice(I)V
.end method

.method public abstract setAudioTrackIndex(I)V
.end method

.method public abstract setBitrateIndex(I)V
.end method

.method public abstract setDlnaVol(I)V
.end method

.method public abstract setPlayMode(Lcom/android/gallery3d/app/MovieControllerOverlay$PlayMode;)V
.end method

.method public abstract setTimeTextIndex(I)V
.end method

.method public abstract setVideoZoomDamp(D)V
.end method

.method public abstract setVideoZoomLevel(DZ)V
.end method

.method public abstract setVideoZoomType(Landroid/widget/VideoView$ZoomType;)V
.end method

.method public abstract videoNext()V
.end method

.method public abstract videoPrev()V
.end method
