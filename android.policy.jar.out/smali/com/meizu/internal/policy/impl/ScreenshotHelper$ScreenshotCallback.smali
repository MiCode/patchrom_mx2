.class public interface abstract Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenshotCallback"
.end annotation


# virtual methods
.method public abstract invalidateActivity()V
.end method

.method public abstract invalidateStatusbar()V
.end method

.method public abstract updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V
.end method
