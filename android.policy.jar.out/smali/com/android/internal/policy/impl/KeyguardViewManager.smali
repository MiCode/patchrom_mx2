.class public Lcom/android/internal/policy/impl/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardWindowController;
.implements Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardScreenshot:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

.field private final mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mNeedsInput:Z

.field private mScreenOn:Z

.field private mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

.field private mStatusbarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mStatusbarScreenshot:Landroid/widget/ImageView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/ScreenshotHelper;)V
    .locals 2
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "keyguardViewProperties"
    .parameter "updateMonitor"
    .parameter "screenshotHelper"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iput-object p5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p6, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenshotHelper:Lcom/meizu/internal/policy/impl/ScreenshotHelper;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/ScreenshotHelper;->setCallback(Lcom/meizu/internal/policy/impl/ScreenshotHelper$ScreenshotCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public enableKeyguardDownWithAnim(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    const v0, 0x10301de

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    :cond_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityScreenshot()Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    return-object v0
.end method

.method public getStatusbarScreenshot()Landroid/view/View;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 7

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/CPUfreq;->resetCalibration()I

    .line 358
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 363
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v3, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 367
    .local v2, lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    .line 368
    .local v1, lastStatusbarScreenshotView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    .line 369
    .local v0, lastActivityScreenshotView:Landroid/view/View;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    .line 370
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    .line 373
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 374
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/android/internal/policy/impl/KeyguardViewManager$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local v0           #lastActivityScreenshotView:Landroid/view/View;
    .end local v1           #lastStatusbarScreenshotView:Landroid/view/View;
    .end local v2           #lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    :cond_0
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public invalidateActivity()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->invalidate()V

    .line 494
    :cond_0
    return-void
.end method

.method public invalidateStatusbar()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 487
    :cond_0
    return-void
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onHideMe(Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 294
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onShowMe()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onShowMe()V

    .line 533
    :cond_0
    return-void
.end method

.method public relayoutForPasswordKeyguard(Z)V
    .locals 4
    .parameter "isSecure"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->enableKeyguardDownWithAnim(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 518
    goto :goto_1

    :cond_2
    move v1, v2

    .line 519
    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKeyguardScreenshotVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 500
    :cond_0
    if-eqz p1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNeedsInput(Z)V
    .locals 3
    .parameter "needsInput"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    :cond_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized show()V
    .locals 18

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 128
    .local v15, res:Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x1110020

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/4 v12, 0x1

    .line 131
    .local v12, enableScreenRotation:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_4

    .line 134
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 136
    const/16 v16, -0x1

    .line 137
    .local v16, stretch:I
    const v5, 0x4100900

    .line 142
    .local v5, flags:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_1

    .line 143
    const/high16 v2, 0x2

    or-int/2addr v5, v2

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    const/high16 v2, 0x100

    or-int/2addr v5, v2

    .line 149
    :cond_2
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7d4

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 152
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_3
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 161
    const-string v2, "Keyguard"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    const/16 v2, 0x102

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 165
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/4 v8, -0x1

    .line 173
    .local v8, keyguardScreenshotHeight:I
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/16 v9, 0x7e9

    const/16 v10, 0x518

    const/4 v11, -0x3

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 180
    .local v6, lpScreenshot:Landroid/view/WindowManager$LayoutParams;
    const-string v2, "KeyguardScreenshot"

    invoke-virtual {v6, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #flags:I
    .end local v6           #lpScreenshot:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #keyguardScreenshotHeight:I
    .end local v16           #stretch:I
    :cond_4
    if-eqz v12, :cond_7

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 195
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x10301de

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-nez v2, :cond_5

    .line 204
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    .line 205
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v13, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v13, lpActivityScreenshot:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v2, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    .line 214
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v14, lpStatusbar:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x50

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v4, v7, v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    const v3, 0x102025f

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setId(I)V

    .line 229
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    if-eqz v2, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->show()V

    .line 246
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #lpActivityScreenshot:Landroid/view/ViewGroup$LayoutParams;
    .end local v14           #lpStatusbar:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    const/high16 v17, 0x60

    .line 250
    .local v17, visFlags:I
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KGVM: Set visibility on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$Injector;->updateDisplayDesktopFlag(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->requestFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 128
    .end local v12           #enableScreenRotation:Z
    .end local v17           #visFlags:I
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 191
    .restart local v12       #enableScreenRotation:Z
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 127
    .end local v12           #enableScreenRotation:Z
    .end local v15           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startActivityIfNeed()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->startActivityIfNeed()V

    .line 415
    :cond_0
    return-void
.end method

.method public updateScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "bgDrawable"
    .parameter "isSuccess"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 470
    :cond_0
    if-eqz p2, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 473
    :cond_1
    return-void
.end method

.method public updateScreenshotOfStatusbar(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mStatusbarScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    :cond_0
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 341
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 343
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKeyguardView()Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    return-object v0
.end method

.method getKeyguardViewProperties()Lcom/android/internal/policy/impl/KeyguardViewProperties;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    return-object v0
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method
