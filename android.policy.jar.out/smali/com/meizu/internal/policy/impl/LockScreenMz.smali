.class public Lcom/meizu/internal/policy/impl/LockScreenMz;
.super Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.source "LockScreenMz.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;


# static fields
.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final POS_OF_DIVIDER_OUT:F = 200.0f

.field private static final POS_OF_ICON_DISAPPEAR:F = 340.0f

.field private static final POS_OF_ICON_FADE_OUT:F = 3.0f

.field private static final POS_OF_VIEW_FADE_OUT:F = 140.0f

.field protected static final POS_UNKNOW:I = -0x2710


# instance fields
.field protected mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

.field protected mClickAvailableWidth:I

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

.field private final mDragSpaceForIconDisappear:F

.field protected mEmailIcon:Landroid/widget/ImageView;

.field private mEmailSpaceForIconDisappear:I

.field private mHideMe:Z

.field protected mInitPosOfEmailIcon:I

.field protected mInitPosOfMmsIcon:I

.field protected mInitPosOfPhoneIcon:I

.field protected mInitPosOfTopAppIcon:I

.field mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

.field protected mMmsIcon:Landroid/widget/ImageView;

.field private mMmsSpaceForIconDisappear:I

.field protected mPhoneIcon:Landroid/widget/ImageView;

.field private mPhoneSpaceForIconDisappear:I

.field mPowerManager:Landroid/os/PowerManager;

.field private mRemoveNotification:Z

.field protected mTopAppIcon:Landroid/widget/ImageView;

.field private mTopAppSpaceForIconDisappear:I

.field private mTouchDeltaX:I

.field private mTouchDeltaY:I

.field protected mUnlockDivider:Landroid/view/View;

.field protected mUnlockDividerBlue:Landroid/view/View;

.field protected mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "controllerMonitor"
    .parameter "dragCallback"

    .prologue
    .line 62
    const v6, 0x1090065

    const v7, 0x1090065

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;IILcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 30
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenMz$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockScreenMz$1;-><init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mHideMe:Z

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    .line 553
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    .line 554
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    .line 555
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    .line 556
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    .line 557
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsSpaceForIconDisappear:I

    .line 558
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneSpaceForIconDisappear:I

    .line 559
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppSpaceForIconDisappear:I

    .line 560
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailSpaceForIconDisappear:I

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->setFocusable(Z)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->setFocusableInTouchMode(Z)V

    .line 67
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->setDescendantFocusability(I)V

    .line 70
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPowerManager:Landroid/os/PowerManager;

    .line 72
    new-instance v0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-direct {v0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    .line 73
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->setCallback(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;)V

    .line 74
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 75
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 78
    const v0, 0x102031c

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    .line 79
    const v0, 0x102031b

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    .line 80
    const v0, 0x102031a

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    .line 81
    const v0, 0x1020319

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    .line 82
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    .line 83
    const v0, 0x102031e

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isPhoneRecordMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108038c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    new-instance v1, Lcom/meizu/internal/policy/impl/LockScreenMz$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/LockScreenMz$2;-><init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    .line 106
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeBox:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x43aa

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDragSpaceForIconDisappear:F

    .line 110
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private OnRemoveNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isScreenShotSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEIZU_REMOVE_MISSING_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    invoke-virtual {p0, v3}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateMissedCall(I)V

    .line 508
    :cond_0
    :goto_0
    const-string v0, "lockRemoveNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUCCESS OnRemoveNotification mUnlockTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_1
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEIZU_REMOVE_UNREAD_MMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    invoke-virtual {p0, v3}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateUnreadSms(I)V

    goto :goto_0

    .line 510
    :cond_2
    const-string v0, "lockRemoveNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED OnRemoveNotification mUnlockTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private adjustEmailIcon()V
    .locals 2

    .prologue
    .line 796
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadEmailCount:I

    if-lez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private adjustMmsIcon()V
    .locals 2

    .prologue
    .line 789
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadSmsCount:I

    if-lez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    const v1, 0x1080481

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    const v1, 0x108047f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private adjustPhoneIcont()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isPhoneRecordMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108038c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 786
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 780
    :cond_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMissedCallCount:I

    if-lez v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108047d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108047e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private getAccelerateAlpha(I)I
    .locals 5
    .parameter "dragPos"

    .prologue
    const/high16 v4, 0x4348

    .line 482
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    const/high16 v3, 0x4420

    div-float v1, v2, v3

    .line 483
    .local v1, rate:F
    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 484
    mul-float/2addr v1, v1

    .line 485
    mul-float v2, v1, v4

    sub-float v2, v4, v2

    float-to-int v0, v2

    .line 486
    .local v0, alpha:I
    return v0
.end method

.method private iconDropDown(Landroid/widget/ImageView;)V
    .locals 10
    .parameter "iconView"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 690
    const/4 v5, 0x0

    .line 691
    .local v5, spaceForIconDisappear:I
    const/16 v1, -0x2710

    .line 692
    .local v1, initPosOfIcon:I
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_4

    .line 693
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    if-gez v6, :cond_0

    .line 694
    new-array v2, v8, [I

    .line 695
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 696
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    aget v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppSpaceForIconDisappear:I

    .line 697
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    .line 700
    .end local v2           #location:[I
    :cond_0
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    .line 701
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppSpaceForIconDisappear:I

    .line 723
    :cond_1
    :goto_0
    int-to-float v6, v5

    iget v7, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDragSpaceForIconDisappear:F

    div-float/2addr v6, v7

    iget v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iget v8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v0, v6, v7

    .line 725
    .local v0, iconSpace:F
    int-to-float v6, v1

    add-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 726
    .local v3, offset:I
    if-eqz v3, :cond_2

    .line 727
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 729
    :cond_2
    const/high16 v6, 0x4040

    iget v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 730
    .local v4, rate:F
    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v4, v9, v6

    .line 731
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    .line 732
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 734
    :cond_3
    return-void

    .line 702
    .end local v0           #iconSpace:F
    .end local v3           #offset:I
    .end local v4           #rate:F
    :cond_4
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_6

    .line 703
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    if-gez v6, :cond_5

    .line 704
    new-array v2, v8, [I

    .line 705
    .restart local v2       #location:[I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 706
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    aget v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsSpaceForIconDisappear:I

    .line 707
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    .line 709
    .end local v2           #location:[I
    :cond_5
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    .line 710
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsSpaceForIconDisappear:I

    goto :goto_0

    .line 711
    :cond_6
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_1

    .line 712
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    if-gez v6, :cond_7

    .line 713
    new-array v2, v8, [I

    .line 714
    .restart local v2       #location:[I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 715
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    aget v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneSpaceForIconDisappear:I

    .line 716
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    .line 718
    .end local v2           #location:[I
    :cond_7
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    .line 719
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneSpaceForIconDisappear:I

    goto :goto_0
.end method

.method private iconDropDownForEmail()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    .line 737
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    if-gez v4, :cond_0

    .line 738
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 739
    .local v2, location:[I
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 740
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailSpaceForIconDisappear:I

    .line 741
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    .line 744
    .end local v2           #location:[I
    :cond_0
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailSpaceForIconDisappear:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDragSpaceForIconDisappear:F

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 746
    .local v0, EmailOffset:F
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 748
    .local v3, offset:I
    if-eqz v3, :cond_1

    .line 749
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 751
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    add-int/lit16 v4, v4, -0x424

    int-to-float v4, v4

    const/high16 v5, 0x430c

    div-float v1, v4, v5

    .line 752
    .local v1, emailAlpha:F
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v1, v7, v4

    .line 753
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    .line 754
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 756
    :cond_2
    return-void
.end method

.method private invalideForDragSurface()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_1

    .line 491
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_2

    .line 493
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-nez v0, :cond_1

    .line 418
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 419
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v2, v0, v1

    .line 420
    .local v2, animSpace:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v3, 0xfa

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 423
    .end local v2           #animSpace:I
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_4

    .line 424
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 425
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 431
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    .line 433
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    .line 434
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 457
    :cond_3
    :goto_1
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 458
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 459
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v3}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    goto :goto_0

    .line 435
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_6

    .line 436
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 437
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_5

    .line 438
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragUnlock()V

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-interface {v0, v5, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V

    .line 442
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    goto :goto_1

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_8

    .line 444
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 445
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_7

    .line 446
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 448
    :cond_7
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 449
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    goto :goto_1

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_3

    .line 451
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 452
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragUnlock()V

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-interface {v0, v5, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onAttachedToWindow()V

    .line 142
    const-string v0, "LockViewBase"

    const-string v1, "***** LOCK ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "LockViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cur orient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "Sliding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateConfiguration()V

    .line 148
    return-void
.end method

.method public onCallingStateChanged()V
    .locals 2

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustPhoneIcont()V

    .line 517
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 520
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateConfiguration()V

    .line 160
    return-void
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 805
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 806
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 809
    :cond_0
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockScreenMz$3;-><init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    iget-boolean v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mHideMe:Z

    if-eqz v9, :cond_1

    .line 191
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 268
    :cond_0
    :goto_0
    return v7

    .line 192
    :cond_1
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v10, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v9, v10, :cond_3

    .line 193
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 196
    .local v6, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 197
    .local v5, x:I
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 198
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 199
    .local v0, bottom:I
    const/4 v9, -0x1

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v2, rcEmail:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 202
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 203
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 204
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 205
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 206
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 208
    iput v8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 209
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 210
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v9, v6

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    .line 212
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    .line 215
    invoke-virtual {p0, v8}, Lcom/meizu/internal/policy/impl/LockScreenMz;->requestDisallowInterceptTouchEvent(Z)V

    .line 216
    iput v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 267
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    .line 268
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v9, :cond_5

    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_5
    move v7, v8

    goto/16 :goto_0

    .line 217
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_a

    if-ge v6, v0, :cond_a

    int-to-float v9, v6

    int-to-float v10, v0

    const/high16 v11, 0x42dc

    iget v12, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_a

    .line 219
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    if-ge v5, v9, :cond_7

    .line 220
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 221
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 222
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 223
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v7}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 240
    :goto_2
    iput v8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 241
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 242
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v9, v6

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    .line 244
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    .line 247
    invoke-virtual {p0, v8}, Lcom/meizu/internal/policy/impl/LockScreenMz;->requestDisallowInterceptTouchEvent(Z)V

    .line 250
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->isHomeScreenVisibility()Z

    move-result v1

    .line 251
    .local v1, isUnlockHome:Z
    if-eqz v1, :cond_9

    .line 252
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 253
    .local v3, statusHeight:I
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 254
    .local v4, statusHeightLarge:I
    sub-int v9, v4, v3

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    goto/16 :goto_1

    .line 224
    .end local v1           #isUnlockHome:Z
    .end local v3           #statusHeight:I
    .end local v4           #statusHeightLarge:I
    :cond_7
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    if-le v5, v9, :cond_8

    iget v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v5, v9, :cond_8

    .line 226
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 227
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 228
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v7}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 230
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    goto :goto_2

    .line 232
    :cond_8
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 234
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 235
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 236
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v13}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 256
    .restart local v1       #isUnlockHome:Z
    :cond_9
    iput v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    goto/16 :goto_1

    .line 258
    .end local v1           #isUnlockHome:Z
    :cond_a
    const/16 v9, 0x23

    if-lt v5, v9, :cond_b

    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    add-int/lit8 v9, v9, -0x23

    if-le v5, v9, :cond_4

    .line 259
    :cond_b
    iput v13, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 260
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 261
    neg-int v9, v5

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    .line 262
    iput v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 263
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 264
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 265
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public onNotifyNewPosition(II)V
    .locals 3
    .parameter "startPos"
    .parameter "distance"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v1, v2, :cond_4

    .line 467
    :cond_2
    add-int v1, p1, p2

    iput v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 468
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 469
    .local v0, KeyguardPos:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-interface {v1, v2, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveV(II)V

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    goto :goto_0

    .line 473
    .end local v0           #KeyguardPos:I
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v1, v2, :cond_0

    .line 474
    :cond_5
    add-int v1, p1, p2

    iput v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 475
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPause()V

    .line 124
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 126
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v2, v0, v1

    .line 127
    .local v2, animSpace:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v3, 0xfa

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 129
    .end local v2           #animSpace:I
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mHideMe:Z

    if-eqz v1, :cond_0

    .line 274
    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 408
    :goto_0
    return v1

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v1, v2, :cond_2

    .line 276
    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 279
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 280
    .local v9, bottom:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 282
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 284
    .local v7, act:I
    if-eqz v8, :cond_3

    const/4 v1, 0x5

    if-ne v8, v1, :cond_9

    .line 286
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 288
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 289
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 290
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v3, v1, v2

    .line 292
    .local v3, animSpace:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 298
    .end local v3           #animSpace:I
    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 293
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 300
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v9, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    .line 407
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    .line 408
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v1, :cond_8

    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 303
    :cond_9
    const/4 v1, 0x2

    if-ne v8, v1, :cond_11

    .line 304
    const/4 v1, -0x1

    if-ne v7, v1, :cond_a

    .line 305
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 307
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 308
    .local v19, y:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 309
    .local v18, x:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 311
    .local v15, unlockPos:I
    :goto_3
    move/from16 v0, v19

    float-to-int v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_f

    .line 315
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->isRealVisible()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_c

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveV(II)V

    .line 326
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v2, 0x320

    if-ge v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    if-nez v1, :cond_d

    .line 327
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 329
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    add-int/lit8 v2, v2, -0x1e

    if-le v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    if-eqz v1, :cond_7

    .line 330
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->OnRemoveNotification()V

    goto/16 :goto_2

    .line 310
    .end local v15           #unlockPos:I
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 321
    .restart local v15       #unlockPos:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_c

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v4}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveV(II)V

    goto :goto_4

    .line 333
    .end local v15           #unlockPos:I
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    int-to-float v1, v1

    add-float v1, v1, v18

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_7

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto/16 :goto_2

    .line 340
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_11
    const/4 v1, 0x1

    if-eq v8, v1, :cond_12

    const/4 v1, 0x6

    if-eq v8, v1, :cond_12

    const/4 v1, 0x3

    if-ne v8, v1, :cond_7

    .line 343
    :cond_12
    const/4 v1, -0x1

    if-eq v7, v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-eq v7, v1, :cond_15

    .line 344
    :cond_13
    const/4 v1, 0x1

    if-eq v8, v1, :cond_14

    const/4 v1, 0x6

    if-ne v8, v1, :cond_15

    .line 345
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 348
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 349
    .restart local v19       #y:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 350
    .restart local v18       #x:F
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 351
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_18

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 353
    .restart local v15       #unlockPos:I
    :goto_5
    move/from16 v0, v19

    float-to-int v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 354
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 357
    .local v17, velocityY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 358
    .local v16, velocityX:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float v13, v1, v2

    .line 359
    .local v13, escapeVelocity:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float v14, v1, v2

    .line 360
    .local v14, escapeVelocityUnlock:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    int-to-float v1, v1

    const/high16 v2, 0x43c8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    const/4 v10, 0x1

    .line 361
    .local v10, dragFarEnough:Z
    :goto_6
    const/4 v1, 0x0

    cmpg-float v1, v17, v1

    if-gez v1, :cond_1a

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1a

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    const/4 v12, 0x1

    .line 363
    .local v12, dragFastEnoughUp:Z
    :goto_7
    const/4 v1, 0x0

    cmpl-float v1, v17, v1

    if-lez v1, :cond_1b

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_1b

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1b

    const/4 v11, 0x1

    .line 365
    .local v11, dragFastEnoughDown:Z
    :goto_8
    if-nez v12, :cond_16

    if-nez v11, :cond_1c

    if-eqz v10, :cond_1c

    .line 366
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v1, v15

    neg-int v3, v1

    .line 367
    .restart local v3       #animSpace:I
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v1, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_7

    .line 370
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    goto/16 :goto_2

    .line 352
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    .end local v13           #escapeVelocity:F
    .end local v14           #escapeVelocityUnlock:F
    .end local v15           #unlockPos:I
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 360
    .restart local v13       #escapeVelocity:F
    .restart local v14       #escapeVelocityUnlock:F
    .restart local v15       #unlockPos:I
    .restart local v16       #velocityX:F
    .restart local v17       #velocityY:F
    :cond_19
    const/4 v10, 0x0

    goto :goto_6

    .line 361
    .restart local v10       #dragFarEnough:Z
    :cond_1a
    const/4 v12, 0x0

    goto :goto_7

    .line 363
    .restart local v12       #dragFastEnoughUp:Z
    :cond_1b
    const/4 v11, 0x0

    goto :goto_8

    .line 374
    .restart local v11       #dragFastEnoughDown:Z
    :cond_1c
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v3, v1, v2

    .line 376
    .restart local v3       #animSpace:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_2

    .line 378
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    .end local v13           #escapeVelocity:F
    .end local v14           #escapeVelocityUnlock:F
    .end local v15           #unlockPos:I
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :cond_1d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 379
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    int-to-float v1, v1

    add-float v1, v1, v18

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 382
    .restart local v17       #velocityY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 383
    .restart local v16       #velocityX:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float v13, v1, v2

    .line 384
    .restart local v13       #escapeVelocity:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float v14, v1, v2

    .line 385
    .restart local v14       #escapeVelocityUnlock:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4348

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_23

    const/4 v10, 0x1

    .line 386
    .restart local v10       #dragFarEnough:Z
    :goto_9
    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-lez v1, :cond_24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_24

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    const/4 v12, 0x1

    .line 388
    .restart local v12       #dragFastEnoughUp:Z
    :goto_a
    const/4 v1, 0x0

    cmpg-float v1, v16, v1

    if-gez v1, :cond_25

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_25

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_25

    const/4 v11, 0x1

    .line 390
    .restart local v11       #dragFastEnoughDown:Z
    :goto_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-lez v1, :cond_1e

    if-nez v12, :cond_21

    :cond_1e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v1, :cond_1f

    if-nez v11, :cond_21

    :cond_1f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-lez v1, :cond_20

    if-nez v11, :cond_20

    if-nez v10, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v1, :cond_26

    if-nez v12, :cond_26

    if-eqz v10, :cond_26

    .line 394
    :cond_21
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 395
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, v2

    .line 396
    .restart local v3       #animSpace:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v1, :cond_22

    .line 397
    neg-int v3, v3

    .line 399
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_2

    .line 385
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    :cond_23
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 386
    .restart local v10       #dragFarEnough:Z
    :cond_24
    const/4 v12, 0x0

    goto :goto_a

    .line 388
    .restart local v12       #dragFastEnoughUp:Z
    :cond_25
    const/4 v11, 0x0

    goto :goto_b

    .line 401
    .restart local v11       #dragFastEnoughDown:Z
    :cond_26
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 402
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    neg-int v3, v1

    .line 403
    .restart local v3       #animSpace:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_2

    .line 408
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    .end local v13           #escapeVelocity:F
    .end local v14           #escapeVelocityUnlock:F
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_27
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public stepUnlockDisappearAnim()V
    .locals 21

    .prologue
    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 570
    .local v16, statusBarHeight:I
    const/4 v13, 0x0

    .line 571
    .local v13, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v13, v18, v16

    .line 574
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 576
    .local v9, dstView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_3

    .line 574
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 578
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 579
    .local v5, dstBottom:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 580
    .local v8, dstTop:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v6, v18, 0x2

    .line 581
    .local v6, dstHeight:I
    add-int v18, v8, v5

    div-int/lit8 v3, v18, 0x2

    .line 583
    .local v3, centre:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v18, v18, v3

    move/from16 v0, v18

    int-to-float v11, v0

    .line 584
    .local v11, offset:F
    move v12, v11

    .line 586
    .local v12, old:F
    int-to-float v0, v6

    move/from16 v18, v0

    add-float v18, v18, v11

    const/high16 v19, 0x430c

    int-to-float v0, v6

    move/from16 v20, v0

    add-float v19, v19, v20

    div-float v11, v18, v19

    .line 587
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 591
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v11

    if-eqz v18, :cond_2

    .line 592
    invoke-virtual {v9, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 597
    .end local v3           #centre:I
    .end local v5           #dstBottom:I
    .end local v6           #dstHeight:I
    .end local v8           #dstTop:I
    .end local v9           #dstView:Landroid/view/View;
    .end local v11           #offset:F
    .end local v12           #old:F
    :cond_4
    const/high16 v18, 0x4348

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    move/from16 v19, v0

    mul-float v14, v18, v19

    .line 598
    .local v14, posDividerOut:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3c

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x435c

    div-float v15, v18, v19

    .line 624
    .local v15, rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 625
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_5

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 630
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_6

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDownForEmail()V

    .line 674
    .end local v15           #rate:F
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    move/from16 v17, v0

    .line 675
    .local v17, unlockPos:I
    :goto_5
    move/from16 v8, v17

    .line 676
    .restart local v8       #dstTop:I
    mul-int/lit8 v18, v17, 0x2

    add-int v5, v18, v16

    .line 677
    .restart local v5       #dstBottom:I
    sub-int v7, v5, v8

    .line 678
    .local v7, dstSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    sub-int v18, v5, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 679
    .restart local v11       #offset:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v11

    if-eqz v18, :cond_7

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 683
    :cond_7
    const/high16 v18, 0x3f80

    sub-float v11, v18, v11

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v11

    if-eqz v18, :cond_0

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 601
    .end local v5           #dstBottom:I
    .end local v7           #dstSpace:I
    .end local v8           #dstTop:I
    .end local v11           #offset:F
    .end local v17           #unlockPos:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v14

    if-gtz v18, :cond_9

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v4, v14, v18

    .line 605
    .local v4, dividerRate:F
    const/high16 v18, 0x4370

    div-float v4, v4, v18

    .line 606
    const/high16 v18, 0x3f80

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/high16 v20, 0x3f80

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    sub-float v4, v18, v19

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 609
    .end local v4           #dividerRate:F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x43c8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDensityScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v4, v18, v19

    .line 610
    .restart local v4       #dividerRate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x42c8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 611
    const/high16 v18, 0x42c8

    div-float v4, v4, v18

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    sub-float v19, v19, v4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 633
    .end local v4           #dividerRate:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    .line 637
    .local v2, alpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v2, v18

    if-eqz v18, :cond_b

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 641
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0xa0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x435c

    div-float v15, v18, v19

    .line 642
    .restart local v15       #rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 643
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_6

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 648
    .end local v2           #alpha:F
    .end local v15           #rate:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_d

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDownForEmail()V

    .line 655
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3c

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x435c

    div-float v15, v18, v19

    .line 656
    .restart local v15       #rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 657
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_6

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 661
    .end local v15           #rate:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0xc8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x435c

    div-float v15, v18, v19

    .line 667
    .restart local v15       #rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 668
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_6

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 674
    .end local v15           #rate:F
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 133
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 136
    :cond_0
    return-void
.end method

.method public updateMissedCall(I)V
    .locals 0
    .parameter "missedCallCount"

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateMissedCall(I)V

    .line 760
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustPhoneIcont()V

    .line 761
    return-void
.end method

.method public updateNewEamil(I)V
    .locals 0
    .parameter "newEmailCount"

    .prologue
    .line 769
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadEmailCount:I

    .line 770
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustEmailIcon()V

    .line 771
    return-void
.end method

.method public updateUnreadSms(I)V
    .locals 0
    .parameter "unreadSmsCount"

    .prologue
    .line 764
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateUnreadSms(I)V

    .line 765
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustMmsIcon()V

    .line 766
    return-void
.end method
