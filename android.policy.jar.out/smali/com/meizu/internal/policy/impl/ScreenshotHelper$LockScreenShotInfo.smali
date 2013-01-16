.class public Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockScreenShotInfo"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 587
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->this$0:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 585
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mAppName:Ljava/lang/String;

    .line 586
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mIsAnimating:Z

    .line 588
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mAppName:Ljava/lang/String;

    .line 590
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mIsAnimating:Z

    .line 591
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isIsAnimating()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mIsAnimating:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "mAppName"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mAppName:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "mBitmap"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 597
    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0
    .parameter "mIsAnimating"

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/ScreenshotHelper$LockScreenShotInfo;->mIsAnimating:Z

    .line 609
    return-void
.end method
