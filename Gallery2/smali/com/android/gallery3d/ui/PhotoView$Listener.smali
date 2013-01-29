.class public interface abstract Lcom/android/gallery3d/ui/PhotoView$Listener;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract lockOrientation()V
.end method

.method public abstract onActionBarAllowed(Z)V
.end method

.method public abstract onActionBarWanted()V
.end method

.method public abstract onActionMove(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onCommitDeleteImage()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
.end method

.method public abstract onDoubleTap(II)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onLongPress(II)V
.end method

.method public abstract onSingleTapUpConfirmed(II)V
.end method
