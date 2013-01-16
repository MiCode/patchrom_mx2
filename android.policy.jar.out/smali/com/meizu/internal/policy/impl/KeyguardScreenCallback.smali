.class public interface abstract Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;
.super Ljava/lang/Object;
.source "KeyguardScreenCallback.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;


# virtual methods
.method public abstract goToUnlockScreen()V
.end method

.method public abstract isPassword()Z
.end method

.method public abstract isScreenShotSuccess()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isSimPin()Z
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V
.end method

.method public abstract recreateMe(Landroid/content/res/Configuration;)V
.end method

.method public abstract requestUpdateScreenshot(I)Landroid/graphics/Bitmap;
.end method
