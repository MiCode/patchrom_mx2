.class public interface abstract Lcom/android/camera/VideoFocusManager$Listener;
.super Ljava/lang/Object;
.source "VideoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract getCameraEV()I
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getIsCanNextFocus()Z
.end method

.method public abstract getIsForbitAutoFocus()Z
.end method

.method public abstract getIsMediaRecorderRecording()Z
.end method

.method public abstract getIsMeizuVideoRecord()Z
.end method

.method public abstract setFocusParameters()V
.end method

.method public abstract touchFocus()V
.end method
