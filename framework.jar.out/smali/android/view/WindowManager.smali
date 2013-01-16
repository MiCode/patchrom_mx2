.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$BadTokenException;
    }
.end annotation


# static fields
.field public static final SHOW_LOCK_ANIMATION:Z = false

.field public static final SHOW_STATUSBAR_WHEN_DRAG_UNLOCK:I = 0x2


# virtual methods
.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method
