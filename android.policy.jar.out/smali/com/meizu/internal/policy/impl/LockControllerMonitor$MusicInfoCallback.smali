.class public interface abstract Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicInfoCallback;
.super Ljava/lang/Object;
.source "LockControllerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockControllerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicInfoCallback"
.end annotation


# virtual methods
.method public abstract onAudioDeviceChanged(I)V
.end method

.method public abstract onDlnaDeviceChanged(Z)V
.end method

.method public abstract onDlnaRemoteVolumeChanged(F)V
.end method

.method public abstract onDoubleClickHome()V
.end method

.method public abstract onMetaChanged()V
.end method

.method public abstract onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
.end method

.method public abstract onMusicClientClear()V
.end method

.method public abstract onMusicVolumeChanged(I)V
.end method

.method public abstract onNameStateChanged()V
.end method

.method public abstract onPlaybackComplete()V
.end method

.method public abstract onPlaystateChanged()V
.end method
