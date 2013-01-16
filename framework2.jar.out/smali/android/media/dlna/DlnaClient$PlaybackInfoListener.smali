.class public interface abstract Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
.super Ljava/lang/Object;
.source "DlnaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackInfoListener"
.end annotation


# virtual methods
.method public abstract onPlaybackStateMessage(I)V
.end method

.method public abstract onPlayerTrackUriChanged(Ljava/lang/String;)V
.end method

.method public abstract onPositionMessage(J)V
.end method

.method public abstract onVolumeMessage(F)V
.end method
