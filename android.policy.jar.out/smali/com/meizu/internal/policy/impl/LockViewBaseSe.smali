.class public Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.super Landroid/widget/FrameLayout;
.source "LockViewBaseSe.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;,
        Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;,
        Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;,
        Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field protected static final INIT_FOREGROUND_ALPHA:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "LockViewBase"


# instance fields
.field protected final DRAG_ANIM_DURATION:I

.field protected DRAG_ESCAPE_VELOCITY:F

.field protected DRAG_ESCAPE_VELOCITY_UNLOCK:F

.field protected DRAG_X_FAR_ENOUGH:I

.field protected DRAG_Y_FAR_ENOUGH:I

.field protected DRAG_Y_FAR_ENOUGH_REMOVE_MMS:I

.field protected VALID_TOUCH_RANGE_CAMERA:I

.field protected VALID_TOUCH_RANGE_HEIGHT:I

.field protected mActivityManager:Landroid/app/ActivityManager;

.field protected mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

.field protected mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field protected mBatteryLevel:Landroid/widget/TextView;

.field protected mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

.field protected mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

.field mClickHomeRunnable:Ljava/lang/Runnable;

.field mClickedHome:Z

.field protected mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

.field protected mCreationOrientation:I

.field protected mDensityScale:F

.field private mDisappearWhenUnlock:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

.field protected mDragMode:I

.field protected mDragPosX:I

.field protected mDragPosY:I

.field mHandler:Landroid/os/Handler;

.field public mHideMe:Z

.field protected mIsActive:Z

.field mIsChecking:Z

.field protected mKeyboardHidden:I

.field mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

.field protected mLedManager:Landroid/app/ILedLightsServiceManager;

.field mMissedCallCount:I

.field protected mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

.field protected mPluggedIn:Z

.field protected mPointerId:I

.field mPowerManager:Landroid/os/PowerManager;

.field mResetDateShow:Ljava/lang/Runnable;

.field mResetMusicInfoShow:Ljava/lang/Runnable;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mStatusbarScreenshot:Landroid/view/View;

.field protected mTimeBox:Landroid/view/View;

.field protected mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

.field protected mUnlockLimitedPos:I

.field protected mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

.field protected mUnlockView:Landroid/view/View;

.field mUnreadEmailCount:I

.field mUnreadSmsCount:I

.field protected mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWallpaperManager:Landroid/app/WallpaperManager;

.field protected mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;IILcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "controllerMonitor"
    .parameter "layoutResourcePort"
    .parameter "layoutResourceLand"
    .parameter "dragCallback"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/16 v5, 0xfa

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ANIM_DURATION:I

    .line 101
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    .line 102
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mLedManager:Landroid/app/ILedLightsServiceManager;

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    .line 119
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    .line 120
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    .line 147
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 157
    const/4 v5, -0x1

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 162
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMissedCallCount:I

    .line 167
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadSmsCount:I

    .line 172
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadEmailCount:I

    .line 174
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 180
    const/4 v5, 0x0

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 212
    new-instance v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    .line 223
    new-instance v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$2;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$2;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    .line 230
    new-instance v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$3;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$3;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    .line 600
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHideMe:Z

    .line 631
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickedHome:Z

    .line 632
    new-instance v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$4;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickHomeRunnable:Ljava/lang/Runnable;

    .line 651
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPowerManager:Landroid/os/PowerManager;

    .line 674
    new-instance v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$5;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHandler:Landroid/os/Handler;

    .line 244
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 245
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 246
    const/4 v5, 0x1

    invoke-virtual {v2, p6, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 251
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050190

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_Y_FAR_ENOUGH:I

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050192

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_X_FAR_ENOUGH:I

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050193

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_HEIGHT:I

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050194

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_CAMERA:I

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050191

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_Y_FAR_ENOUGH_REMOVE_MMS:I

    .line 259
    iput-object p4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    .line 260
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 261
    iput-object p5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 262
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    .line 263
    iget v5, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyboardHidden:I

    .line 264
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 267
    .local v4, statusHeight:I
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 268
    .local v3, metrics:Landroid/util/DisplayMetrics;
    if-eqz v3, :cond_0

    .line 269
    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    .line 270
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    .line 271
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    .line 274
    :cond_0
    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 275
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 278
    const v5, 0x1020067

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    .line 279
    const v5, 0x10202fc

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeBox:Landroid/view/View;

    .line 283
    const v5, 0x10202fb

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    .line 284
    const v5, 0x10202fd

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mBatteryLevel:Landroid/widget/TextView;

    .line 286
    const v5, 0x1020301

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/internal/policy/impl/LockMusicView;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    .line 287
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v5, p5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setControllerMonitor(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    .line 288
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    invoke-virtual {v5, v6}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockWidgetCallback(Lcom/meizu/internal/policy/impl/ILockWidget;)V

    .line 291
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-eqz v5, :cond_1

    .line 292
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 295
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    .line 296
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 301
    :cond_1
    sget-object v5, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    invoke-static {}, Landroid/app/LedLightsServiceManager;->getService()Landroid/app/ILedLightsServiceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mLedManager:Landroid/app/ILedLightsServiceManager;

    .line 303
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mLedManager:Landroid/app/ILedLightsServiceManager;

    if-eqz v5, :cond_2

    .line 305
    :try_start_0
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mLedManager:Landroid/app/ILedLightsServiceManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/app/ILedLightsServiceManager;->setKeyGuardLight(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    new-instance v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    invoke-direct {v5, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    .line 316
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v5, :cond_3

    .line 318
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v6, "wallpaper"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 322
    :cond_3
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawableOfLockWallpaperToLockScreen()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->setFocusable(Z)V

    .line 326
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->setFocusableInTouchMode(Z)V

    .line 327
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v5, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->registerCallingInfoCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;)V

    .line 331
    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 332
    iput-object p8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    .line 333
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v5, :cond_4

    .line 334
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->getActivityScreenshot()Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    .line 335
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v5}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->getStatusbarScreenshot()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    .line 337
    :cond_4
    return-void

    .line 248
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #statusHeight:I
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v2, p7, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 306
    .restart local v3       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #statusHeight:I
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadCharingView()V
    .locals 2

    .prologue
    .line 433
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 435
    :cond_0
    const v1, 0x10202ff

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 436
    const v1, 0x102034c

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/ChargingEdotView;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    .line 437
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 438
    .local v0, atteryLevel:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setBatteryLevel(I)V

    goto :goto_0
.end method

.method private resetViewStatus()V
    .locals 4

    .prologue
    .line 446
    const-string v1, "KeyguardCharging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charing: resetViewStatus,  mPluggedIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 450
    .local v0, atteryLevel:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setBatteryLevel(I)V

    .line 452
    .end local v0           #atteryLevel:I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateView()V

    .line 453
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->pauseBornAndUpdateEdot()V

    .line 367
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->cleanUp()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    .line 372
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x96

    const/16 v6, 0x3e8

    const/4 v3, 0x1

    .line 655
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 656
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 657
    .local v0, action:I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 658
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 659
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v7, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 660
    :cond_2
    sget-object v4, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    if-nez v0, :cond_0

    .line 661
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 662
    .local v2, ret:Z
    if-nez v2, :cond_1

    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v4, v5, :cond_1

    .line 663
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v3

    .line 665
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCheckingPassword()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onCallingStateChanged()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public onClickHome()V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 2

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickedHome:Z

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mClickHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 617
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 620
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    .line 621
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 622
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->startMusic()V

    goto :goto_0
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHideMe:Z

    .line 603
    return-void
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onMetaChanged()V

    .line 568
    :cond_0
    return-void
.end method

.method public onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockMusicView;->onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onMusicClientClear()V

    .line 598
    :cond_0
    return-void
.end method

.method public onNameStateChanged()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onNameStateChanged()V

    .line 586
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    .line 345
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->pauseBornAndUpdateEdot()V

    .line 348
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 611
    return-void
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onPlaybackComplete()V

    .line 574
    :cond_0
    return-void
.end method

.method public onPlaystateChanged()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onPlaystateChanged()V

    .line 580
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 351
    const-string v0, "Optimization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, unlockPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    .line 356
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->resetViewStatus()V

    .line 357
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->invalidate()V

    goto :goto_0
.end method

.method public onShowMe()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHideMe:Z

    .line 607
    return-void
.end method

.method public onTouchScreen()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 460
    return-void
.end method

.method public onUpdateCallingTime()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 7
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 378
    const-string v4, "KeyguardCharging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "charing: onRefreshBatteryInfo:pluggedIn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPluggedIn ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, batteryLevelString:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mBatteryLevel:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-nez v4, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->loadCharingView()V

    .line 387
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisibility(I)V

    .line 390
    :cond_0
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v4, p3}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setBatteryLevel(I)V

    .line 392
    if-eqz p2, :cond_8

    .line 393
    instance-of v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v4, :cond_7

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, showBattery:Z
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v5, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v4, v5, :cond_2

    .line 396
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v4, v2, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 397
    const/4 v1, 0x1

    .line 400
    :cond_2
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getChargingState()Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    move-result-object v4

    sget-object v5, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v4, v5, :cond_5

    .line 401
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v5, :cond_4

    :goto_0
    invoke-virtual {v4, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startPlugging(Z)V

    .line 422
    .end local v1           #showBattery:Z
    :cond_3
    :goto_1
    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    .line 423
    return-void

    .restart local v1       #showBattery:Z
    :cond_4
    move v2, v3

    .line 401
    goto :goto_0

    .line 404
    :cond_5
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v2, :cond_6

    .line 405
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startChargingEdot()V

    goto :goto_1

    .line 407
    :cond_6
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->chargingFull()V

    goto :goto_1

    .line 410
    .end local v1           #showBattery:Z
    :cond_7
    instance-of v4, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v4, :cond_3

    .line 411
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v4, v2, v3}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 412
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getChargingState()Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    move-result-object v2

    sget-object v4, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v2, v4, :cond_3

    .line 413
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startPlugging(Z)V

    goto :goto_1

    .line 417
    :cond_8
    if-nez p2, :cond_3

    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopChargingAndPlugin()V

    goto :goto_1
.end method

.method public stopTest()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopChargingAndPlugin()V

    .line 429
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMissedCall(I)V
    .locals 0
    .parameter "missedCallCount"

    .prologue
    .line 506
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMissedCallCount:I

    .line 508
    return-void
.end method

.method public updateNewEamil(I)V
    .locals 0
    .parameter "newEmailCount"

    .prologue
    .line 531
    return-void
.end method

.method public updateUnreadSms(I)V
    .locals 0
    .parameter "unreadSmsCount"

    .prologue
    .line 511
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadSmsCount:I

    .line 517
    return-void
.end method

.method protected updateView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 463
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->pauseBornAndUpdateEdot()V

    .line 469
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    goto :goto_0

    .line 472
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    if-eqz v0, :cond_6

    .line 473
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-nez v0, :cond_3

    .line 474
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->loadCharingView()V

    .line 477
    :cond_3
    instance-of v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v3, v3}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 479
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-nez v0, :cond_4

    .line 480
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startChargingEdot()V

    goto :goto_0

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->chargingFull()V

    goto :goto_0

    .line 484
    :cond_5
    instance-of v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v3, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    goto :goto_0

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopChargingAndPlugin()V

    .line 492
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    goto :goto_0
.end method
