.class public interface abstract Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;
.super Ljava/lang/Object;
.source "LockViewBaseSe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragCallback"
.end annotation


# virtual methods
.method public abstract enableKeyguardDownWithAnim(Z)V
.end method

.method public abstract getActivityScreenshot()Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;
.end method

.method public abstract getStatusbarScreenshot()Landroid/view/View;
.end method

.method public abstract onDragCancel()V
.end method

.method public abstract onDragMoveH(I)V
.end method

.method public abstract onDragMoveV(II)V
.end method

.method public abstract onDragUnlock()V
.end method

.method public abstract relayoutForPasswordKeyguard(Z)V
.end method

.method public abstract setKeyguardScreenshotVisible(Z)V
.end method
