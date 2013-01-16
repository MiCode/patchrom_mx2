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
.field protected static final AVAILAVLE_TOUCH_RANGE_HEIGHT:I = 0x6e

.field protected static final AVAILAVLE_TOUCH_RANGE_PHONE_MMS:I = 0xd7

.field protected static final AVAILAVLE_TOUCH_RANGE_UNLOCK:I = 0xd2

.field private static final DBG:Z = false

.field protected static final DRAG_X_FAR_ENOUGH:I = 0xc8

.field protected static final DRAG_Y_FAR_ENOUGH:I = 0x190

.field protected static final INIT_FOREGROUND_ALPHA:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "LockViewBase"

.field protected static final VALID_TOUCH_RANGE_CAMERA:I = 0x23


# instance fields
.field protected final DRAG_ANIM_DURATION:I

.field protected DRAG_ESCAPE_VELOCITY:F

.field protected DRAG_ESCAPE_VELOCITY_UNLOCK:F

.field protected mActivityManager:Landroid/app/ActivityManager;

.field protected mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

.field protected mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

.field protected mBatteryLevel:Landroid/widget/TextView;

.field protected mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

.field protected mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

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

.field public mHideMe:Z

.field protected mIsActive:Z

.field mIsChecking:Z

.field protected mKeyboardHidden:I

.field mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

.field mMissedCallCount:I

.field protected mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

.field protected mPluggedIn:Z

.field protected mPointerId:I

.field mResetDateShow:Ljava/lang/Runnable;

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
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "controllerMonitor"
    .parameter "layoutResourcePort"
    .parameter "layoutResourceLand"
    .parameter "dragCallback"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/high16 v4, 0x4348

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    .line 70
    const v4, 0x451c4000

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    .line 77
    const/16 v4, 0xfa

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ANIM_DURATION:I

    .line 102
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    .line 121
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    .line 122
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    .line 149
    const/4 v4, 0x0

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 159
    const/4 v4, -0x1

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 164
    const/4 v4, 0x0

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMissedCallCount:I

    .line 169
    const/4 v4, 0x0

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadSmsCount:I

    .line 174
    const/4 v4, 0x0

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadEmailCount:I

    .line 176
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 182
    const/4 v4, 0x0

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 214
    new-instance v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$1;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    .line 225
    new-instance v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe$2;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$2;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    .line 589
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHideMe:Z

    .line 241
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 242
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 243
    const/4 v4, 0x1

    invoke-virtual {v1, p6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 248
    :goto_0
    iput-object p4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    .line 249
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 250
    iput-object p5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 251
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    .line 252
    iget v4, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyboardHidden:I

    .line 253
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 256
    .local v3, statusHeight:I
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 257
    .local v2, metrics:Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_0

    .line 258
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    .line 259
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    .line 260
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    .line 263
    :cond_0
    sget-object v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 267
    const v4, 0x1020067

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    .line 268
    const v4, 0x1020300

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeBox:Landroid/view/View;

    .line 272
    const v4, 0x10202ff

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    .line 273
    const v4, 0x1020301

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mBatteryLevel:Landroid/widget/TextView;

    .line 274
    const v4, 0x1020305

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/internal/policy/impl/LockMusicView;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    .line 275
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v4, p5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setControllerMonitor(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V

    .line 276
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mKeyguardWidgetListener:Lcom/meizu/internal/policy/impl/ILockWidget;

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockWidgetCallback(Lcom/meizu/internal/policy/impl/ILockWidget;)V

    .line 279
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-eqz v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 282
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v4}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 283
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 302
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    new-instance v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    invoke-direct {v4, p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;-><init>(Lcom/meizu/internal/policy/impl/LockViewBaseSe;)V

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    .line 305
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v5, "wallpaper"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 311
    :cond_2
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getDrawableOfLockWallpaperToLockScreen()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->setFocusable(Z)V

    .line 315
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->setFocusableInTouchMode(Z)V

    .line 316
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v4, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->registerCallingInfoCallback(Lcom/meizu/internal/policy/impl/LockControllerMonitor$CallingInfoCallback;)V

    .line 320
    sget-object v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 321
    iput-object p8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    .line 322
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v4, :cond_3

    .line 323
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->getActivityScreenshot()Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    .line 324
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->getStatusbarScreenshot()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    .line 326
    :cond_3
    return-void

    .line 245
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #statusHeight:I
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v1, p7, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private loadCharingView()V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 417
    :cond_0
    const v1, 0x1020303

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 418
    const v1, 0x1020350

    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/ChargingEdotView;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    .line 419
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 420
    .local v0, atteryLevel:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setBatteryLevel(I)V

    goto :goto_0
.end method

.method private resetViewStatus()V
    .locals 4

    .prologue
    .line 428
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

    .line 430
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 432
    .local v0, atteryLevel:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setBatteryLevel(I)V

    .line 434
    .end local v0           #atteryLevel:I
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateView()V

    .line 435
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mWallpaperObserver:Lcom/meizu/internal/policy/impl/LockViewBaseSe$WallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->pauseBornAndUpdateEdot()V

    .line 356
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->cleanUp()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    .line 361
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetDateShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method public isCheckingPassword()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onCallingStateChanged()V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public onDoubleClickHome()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 573
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 574
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->startMusic()V

    .line 575
    return-void
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHideMe:Z

    .line 592
    return-void
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onMetaChanged()V

    .line 550
    :cond_0
    return-void
.end method

.method public onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, p1}, Lcom/meizu/internal/policy/impl/LockMusicView;->onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V

    .line 581
    :cond_0
    return-void
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onMusicClientClear()V

    .line 587
    :cond_0
    return-void
.end method

.method public onNameStateChanged()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onNameStateChanged()V

    .line 568
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    .line 334
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->pauseBornAndUpdateEdot()V

    .line 337
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 600
    return-void
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onPlaybackComplete()V

    .line 556
    :cond_0
    return-void
.end method

.method public onPlaystateChanged()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->onPlaystateChanged()V

    .line 562
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 340
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

    .line 342
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    .line 345
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->resetViewStatus()V

    .line 346
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->invalidate()V

    goto :goto_0
.end method

.method public onShowMe()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mHideMe:Z

    .line 596
    return-void
.end method

.method public onTouchScreen()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 442
    return-void
.end method

.method public onUpdateCallingTime()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 6
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    const-string v3, "KeyguardCharging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charing: onRefreshBatteryInfo:pluggedIn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPluggedIn ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsActive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, batteryLevelString:Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mBatteryLevel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-nez v3, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->loadCharingView()V

    .line 374
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v3, p3}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setBatteryLevel(I)V

    .line 379
    if-eqz p2, :cond_6

    .line 380
    instance-of v3, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v3, :cond_5

    .line 381
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v3, v1, v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 382
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v3}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getChargingState()Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    move-result-object v3

    sget-object v4, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v3, v4, :cond_3

    .line 383
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startPlugging(Z)V

    .line 404
    :cond_1
    :goto_1
    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    .line 405
    return-void

    :cond_2
    move v1, v2

    .line 383
    goto :goto_0

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startChargingEdot()V

    goto :goto_1

    .line 389
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->chargingFull()V

    goto :goto_1

    .line 392
    :cond_5
    instance-of v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v3, :cond_1

    .line 393
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v3, v1, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 394
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getChargingState()Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    move-result-object v1

    sget-object v3, Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;->noPlugging:Lcom/meizu/internal/policy/impl/ChargingEdotView$ChargingState;

    if-ne v1, v3, :cond_1

    .line 395
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startPlugging(Z)V

    goto :goto_1

    .line 399
    :cond_6
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopChargingAndPlugin()V

    goto :goto_1
.end method

.method public stopTest()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopChargingAndPlugin()V

    .line 411
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMissedCall(I)V
    .locals 0
    .parameter "missedCallCount"

    .prologue
    .line 488
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMissedCallCount:I

    .line 490
    return-void
.end method

.method public updateNewEamil(I)V
    .locals 0
    .parameter "newEmailCount"

    .prologue
    .line 513
    return-void
.end method

.method public updateUnreadSms(I)V
    .locals 0
    .parameter "unreadSmsCount"

    .prologue
    .line 493
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadSmsCount:I

    .line 499
    return-void
.end method

.method protected updateView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->pauseBornAndUpdateEdot()V

    .line 451
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v1, v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    goto :goto_0

    .line 454
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPluggedIn:Z

    if-eqz v0, :cond_6

    .line 455
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-nez v0, :cond_3

    .line 456
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->loadCharingView()V

    .line 459
    :cond_3
    instance-of v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    .line 461
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-nez v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->startChargingEdot()V

    goto :goto_0

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->chargingFull()V

    goto :goto_0

    .line 466
    :cond_5
    instance-of v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v2, v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    goto :goto_0

    .line 471
    :cond_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->stopChargingAndPlugin()V

    .line 474
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mChargingEdotView:Lcom/meizu/internal/policy/impl/ChargingEdotView;

    invoke-virtual {v0, v1, v1}, Lcom/meizu/internal/policy/impl/ChargingEdotView;->setVisible(ZZ)V

    goto :goto_0
.end method
