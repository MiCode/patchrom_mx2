.class public interface abstract Lcom/android/camera/FocusManager$Listener;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
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

.method public abstract capture()Z
.end method

.method public abstract getCameraEV()I
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getIsCameraIdle()Z
.end method

.method public abstract getIsCanNextFocus()Z
.end method

.method public abstract getIsCaptrue()Z
.end method

.method public abstract getIsForbitAutoFocus()Z
.end method

.method public abstract getIsShowCaptureAlert()Z
.end method

.method public abstract getIsShutterBtnLongPressed()Z
.end method

.method public abstract getIsZoomScale()Z
.end method

.method public abstract getIsZoomSeekBarVisibility()Z
.end method

.method public abstract lockFocus()V
.end method

.method public abstract setFocusParameters()V
.end method

.method public abstract touchFocus()V
.end method
