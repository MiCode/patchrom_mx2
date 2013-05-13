.class public Lcom/meizu/internal/policy/impl/LockScreenMz;
.super Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.source "LockScreenMz.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;


# static fields
.field private static final DEBUG_CONFIGURATION:Z = true

.field protected static final POS_UNKNOW:I = -0x2710


# instance fields
.field private DISTANCE_OF_DIVIDER_FADE_BLUE:F

.field private DISTANCE_OF_DIVIDER_FADE_OUT:F

.field private DISTANCE_OF_EMAIL_FADE_OUT:F

.field private DISTANCE_OF_ICON_FADE_OUT:F

.field private ICON_ANIM_OFFSET_100DP:I

.field private ICON_ANIM_OFFSET_30DP:I

.field private ICON_ANIM_OFFSET_80DP:I

.field private POS_OF_DIVIDER_OUT:I

.field private POS_OF_EMAIL_FAD_OUT:I

.field private POS_OF_ICON_DISAPPEAR:I

.field private POS_OF_ICON_FADE_OUT_TO_ITSELF:I

.field private POS_OF_VIEW_FADE_OUT:I

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
    .line 80
    const v6, 0x1090069

    const v7, 0x1090069

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

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mHideMe:Z

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    .line 621
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    .line 622
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    .line 623
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    .line 624
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    .line 625
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsSpaceForIconDisappear:I

    .line 626
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneSpaceForIconDisappear:I

    .line 627
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppSpaceForIconDisappear:I

    .line 628
    const/16 v0, -0x2710

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailSpaceForIconDisappear:I

    .line 83
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_ICON_FADE_OUT_TO_ITSELF:I

    .line 84
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_ICON_DISAPPEAR:I

    .line 85
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_VIEW_FADE_OUT:I

    .line 86
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_DIVIDER_OUT:I

    .line 87
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_EMAIL_FAD_OUT:I

    .line 88
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_ICON_FADE_OUT:F

    .line 89
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_EMAIL_FADE_OUT:F

    .line 90
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_DIVIDER_FADE_OUT:F

    .line 91
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_DIVIDER_FADE_BLUE:F

    .line 92
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_30DP:I

    .line 93
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_80DP:I

    .line 94
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_100DP:I

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->setFocusable(Z)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->setFocusableInTouchMode(Z)V

    .line 98
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->setDescendantFocusability(I)V

    .line 101
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPowerManager:Landroid/os/PowerManager;

    .line 103
    new-instance v0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-direct {v0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    .line 104
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->setCallback(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;)V

    .line 105
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 106
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 109
    const v0, 0x1020318

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    .line 110
    const v0, 0x1020317

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    .line 111
    const v0, 0x1020316

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    .line 112
    const v0, 0x1020315

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    .line 113
    const v0, 0x1020319

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    .line 114
    const v0, 0x102031a

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isPhoneRecordMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108039c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V

    .line 126
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    new-instance v1, Lcom/meizu/internal/policy/impl/LockScreenMz$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/LockScreenMz$2;-><init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    .line 137
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeBox:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_ICON_DISAPPEAR:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDragSpaceForIconDisappear:F

    .line 142
    const-string v0, "LockViewBase"

    const-string v1, "***** LockScreenMz construct *****"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108039b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private OnRemoveNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->isScreenShotSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEIZU_REMOVE_MISSING_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 575
    invoke-virtual {p0, v3}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateMissedCall(I)V

    .line 580
    :cond_0
    :goto_0
    const-string v0, "lockRemoveNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUCCESS OnRemoveNotification mUnlockTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_1
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEIZU_REMOVE_UNREAD_MMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 578
    invoke-virtual {p0, v3}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateUnreadSms(I)V

    goto :goto_0

    .line 582
    :cond_2
    const-string v0, "lockRemoveNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED OnRemoveNotification mUnlockTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/LockScreenMz;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->cancleDismissKeyguard()V

    return-void
.end method

.method private adjustEmailIcon()V
    .locals 2

    .prologue
    .line 864
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadEmailCount:I

    if-lez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private adjustMmsIcon()V
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadSmsCount:I

    if-lez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    const v1, 0x108049c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    const v1, 0x108049a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private adjustPhoneIcont()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isPhoneRecordMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108039c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 854
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x108039b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 848
    :cond_1
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMissedCallCount:I

    if-lez v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x1080498

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x1080499

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private cancleDismissKeyguard()V
    .locals 5

    .prologue
    const/16 v4, -0x2710

    const/high16 v3, 0x3f80

    .line 903
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 904
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 905
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 906
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->stopAnimation()V

    .line 907
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 908
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    .line 910
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 913
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    if-eq v0, v4, :cond_0

    .line 914
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 918
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    if-eq v0, v4, :cond_1

    .line 919
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 923
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    if-eq v0, v4, :cond_2

    .line 924
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 927
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_3

    .line 928
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->cancleKeyguard()V

    .line 930
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_4

    .line 931
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 933
    :cond_4
    return-void
.end method

.method private getAccelerateAlpha(I)I
    .locals 5
    .parameter "dragPos"

    .prologue
    const/high16 v4, 0x4348

    .line 554
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    const/high16 v3, 0x4420

    div-float v1, v2, v3

    .line 555
    .local v1, rate:F
    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 556
    mul-float/2addr v1, v1

    .line 557
    mul-float v2, v1, v4

    sub-float v2, v4, v2

    float-to-int v0, v2

    .line 558
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

    .line 758
    const/4 v5, 0x0

    .line 759
    .local v5, spaceForIconDisappear:I
    const/16 v1, -0x2710

    .line 760
    .local v1, initPosOfIcon:I
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_4

    .line 761
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    if-gez v6, :cond_0

    .line 762
    new-array v2, v8, [I

    .line 763
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 764
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    aget v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppSpaceForIconDisappear:I

    .line 765
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    .line 768
    .end local v2           #location:[I
    :cond_0
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    .line 769
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppSpaceForIconDisappear:I

    .line 791
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

    .line 793
    .local v0, iconSpace:F
    int-to-float v6, v1

    add-float/2addr v6, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 794
    .local v3, offset:I
    if-eqz v3, :cond_2

    .line 795
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 797
    :cond_2
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_ICON_FADE_OUT_TO_ITSELF:I

    int-to-float v6, v6

    sub-float v6, v0, v6

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 798
    .local v4, rate:F
    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v4, v9, v6

    .line 799
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    .line 800
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 802
    :cond_3
    return-void

    .line 770
    .end local v0           #iconSpace:F
    .end local v3           #offset:I
    .end local v4           #rate:F
    :cond_4
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_6

    .line 771
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    if-gez v6, :cond_5

    .line 772
    new-array v2, v8, [I

    .line 773
    .restart local v2       #location:[I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 774
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    aget v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsSpaceForIconDisappear:I

    .line 775
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    .line 777
    .end local v2           #location:[I
    :cond_5
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    .line 778
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsSpaceForIconDisappear:I

    goto :goto_0

    .line 779
    :cond_6
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    if-ne p1, v6, :cond_1

    .line 780
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    if-gez v6, :cond_7

    .line 781
    new-array v2, v8, [I

    .line 782
    .restart local v2       #location:[I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 783
    iget v6, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    aget v7, v2, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneSpaceForIconDisappear:I

    .line 784
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    iput v6, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    .line 786
    .end local v2           #location:[I
    :cond_7
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    .line 787
    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneSpaceForIconDisappear:I

    goto :goto_0
.end method

.method private iconDropDownForEmail()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    .line 805
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    if-gez v4, :cond_0

    .line 806
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 807
    .local v2, location:[I
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 808
    iget v4, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailSpaceForIconDisappear:I

    .line 809
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    iput v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfEmailIcon:I

    .line 812
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

    .line 814
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

    .line 816
    .local v3, offset:I
    if-eqz v3, :cond_1

    .line 817
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 819
    :cond_1
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_EMAIL_FAD_OUT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_EMAIL_FADE_OUT:F

    div-float v1, v4, v5

    .line 820
    .local v1, emailAlpha:F
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v1, v7, v4

    .line 821
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    .line 822
    iget-object v4, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 824
    :cond_2
    return-void
.end method

.method private invalideForDragSurface()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_2

    .line 565
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 567
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

    .line 482
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-nez v0, :cond_1

    .line 487
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 488
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v2, v0, v1

    .line 489
    .local v2, animSpace:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v3, 0xfa

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto :goto_0

    .line 492
    .end local v2           #animSpace:I
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_4

    .line 493
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 494
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 500
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 501
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    .line 503
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    .line 504
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 528
    :cond_3
    :goto_1
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 530
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 531
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v3}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    goto :goto_0

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_6

    .line 506
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 507
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_5

    .line 508
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragUnlock()V

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-interface {v0, v5, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V

    .line 512
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    goto :goto_1

    .line 513
    :cond_6
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_8

    .line 514
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 515
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_7

    .line 516
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 519
    :cond_7
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 520
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    goto :goto_1

    .line 521
    :cond_8
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_3

    .line 522
    iput v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 523
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_9

    .line 524
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragUnlock()V

    .line 526
    :cond_9
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-interface {v0, v5, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(ZLcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onAttachedToWindow()V

    .line 199
    const-string v0, "LockViewBase"

    const-string v1, "***** LOCK ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
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

    .line 203
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

    .line 204
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateConfiguration()V

    .line 205
    return-void
.end method

.method public onCallingStateChanged()V
    .locals 2

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustPhoneIcont()V

    .line 589
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 592
    :cond_0
    return-void
.end method

.method public onClickHome()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 891
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxVisible(Z)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 896
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 897
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mResetMusicInfoShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/internal/policy/impl/LockScreenMz;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    const-string v0, "LockViewBase"

    const-string v1, "***** LOCK CONFIG CHANGING"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateConfiguration()V

    .line 217
    return-void
.end method

.method public onHideMe(Z)V
    .locals 1
    .parameter "isKeyguarDown"

    .prologue
    .line 873
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onHideMe(Z)V

    .line 874
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 877
    :cond_0
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockScreenMz$3;-><init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 246
    iget-boolean v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mHideMe:Z

    if-eqz v9, :cond_1

    .line 247
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 327
    :cond_0
    :goto_0
    return v7

    .line 248
    :cond_1
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v10, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v10, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v9, v10, :cond_3

    .line 249
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 252
    .local v6, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 253
    .local v5, x:I
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 254
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 255
    .local v0, bottom:I
    const/4 v9, -0x1

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 256
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 257
    .local v2, rcEmail:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 258
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 259
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 260
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 261
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 262
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 264
    iput v8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 265
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 266
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v9, v6

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    .line 268
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    .line 271
    invoke-virtual {p0, v8}, Lcom/meizu/internal/policy/impl/LockScreenMz;->requestDisallowInterceptTouchEvent(Z)V

    .line 272
    iput v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 323
    :cond_4
    :goto_1
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v9, :cond_5

    .line 324
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->enableUserActivity(Z)V

    .line 326
    :cond_5
    const-string v9, "LockViewBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LockScreenMz onInterceptTouchEvent. mUnlockTab is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v9, :cond_6

    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_6
    move v7, v8

    goto/16 :goto_0

    .line 273
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_b

    if-ge v6, v0, :cond_b

    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_HEIGHT:I

    sub-int v9, v0, v9

    if-le v6, v9, :cond_b

    .line 275
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    if-ge v5, v9, :cond_8

    .line 276
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 277
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 278
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 279
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v7}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 296
    :goto_2
    iput v8, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 297
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 298
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v9, v6

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    .line 300
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->updateView()V

    .line 303
    invoke-virtual {p0, v8}, Lcom/meizu/internal/policy/impl/LockScreenMz;->requestDisallowInterceptTouchEvent(Z)V

    .line 306
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->isHomeScreenVisibility()Z

    move-result v1

    .line 307
    .local v1, isUnlockHome:Z
    if-eqz v1, :cond_a

    .line 308
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050015

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 309
    .local v3, statusHeight:I
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 310
    .local v4, statusHeightLarge:I
    sub-int v9, v4, v3

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    goto/16 :goto_1

    .line 280
    .end local v1           #isUnlockHome:Z
    .end local v3           #statusHeight:I
    .end local v4           #statusHeightLarge:I
    :cond_8
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    if-le v5, v9, :cond_9

    iget v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mClickAvailableWidth:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v5, v9, :cond_9

    .line 282
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    .line 283
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 284
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v7}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 286
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    goto :goto_2

    .line 288
    :cond_9
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 290
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 291
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 292
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v11}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->requestUpdateScreenshot(I)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 312
    .restart local v1       #isUnlockHome:Z
    :cond_a
    iput v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    goto/16 :goto_1

    .line 314
    .end local v1           #isUnlockHome:Z
    :cond_b
    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_CAMERA:I

    if-lt v5, v9, :cond_c

    iget v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    iget v10, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->VALID_TOUCH_RANGE_CAMERA:I

    sub-int/2addr v9, v10

    if-le v5, v9, :cond_4

    .line 315
    :cond_c
    iput v11, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 316
    sget-object v9, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 317
    neg-int v9, v5

    iput v9, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    .line 318
    iput v7, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 319
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 320
    iget-object v9, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v9, v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->setKeyguardScreenshotVisible(Z)V

    .line 321
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
    .line 536
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v1, v2, :cond_4

    .line 539
    :cond_2
    add-int v1, p1, p2

    iput v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 540
    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 541
    .local v0, KeyguardPos:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    invoke-interface {v1, v2, v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveV(II)V

    .line 544
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    goto :goto_0

    .line 545
    .end local v0           #KeyguardPos:I
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v1, v2, :cond_0

    .line 546
    :cond_5
    add-int v1, p1, p2

    iput v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 547
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onPause()V

    .line 158
    const-string v0, "LockViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause: mDragMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mUnlockTab = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mAnimMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-ne v0, v1, :cond_1

    .line 160
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 161
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v2, v0, v1

    .line 162
    .local v2, animSpace:I
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    iget v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v3, 0xfa

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 186
    .end local v2           #animSpace:I
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->camera:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_3

    .line 164
    sget-object v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 165
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 166
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 168
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->cancelDismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->cancleKeyguard()V

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    goto :goto_0

    .line 169
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "LockViewBase"

    const-string v1, "can\'t dismiss keyguard on launch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->cancleDismissKeyguard()V

    .line 181
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->cancelDismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 182
    :catch_1
    move-exception v6

    .line 183
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v0, "LockViewBase"

    const-string v1, "can\'t dismiss keyguard on launch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 333
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 334
    .local v9, bottom:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 336
    .local v7, act:I
    const/4 v1, 0x1

    if-eq v8, v1, :cond_0

    const/4 v1, 0x6

    if-eq v8, v1, :cond_0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_2

    .line 339
    :cond_0
    const-string v1, "LockViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent UP. mUnlockTab is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mHideMe:Z

    if-eqz v1, :cond_4

    .line 345
    const-string v1, "LockViewBase"

    const-string v2, "onTouchEvent return because mHideMe is true"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 477
    :goto_1
    return v1

    .line 340
    :cond_2
    if-eqz v8, :cond_3

    const/4 v1, 0x5

    if-ne v8, v1, :cond_1

    .line 342
    :cond_3
    const-string v1, "LockViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent DOWN. mUnlockTab is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    if-eq v1, v2, :cond_6

    .line 350
    :cond_5
    const-string v1, "LockViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent return. act is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : mDragMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDragMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mAnimMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 354
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 355
    if-eqz v8, :cond_7

    const/4 v1, 0x5

    if-ne v8, v1, :cond_d

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_8

    .line 359
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 360
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 361
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v3, v1, v2

    .line 363
    .local v3, animSpace:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 369
    .end local v3           #animSpace:I
    :cond_8
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 364
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    goto :goto_2

    .line 371
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v9, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    .line 476
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    .line 477
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-nez v1, :cond_c

    invoke-super/range {p0 .. p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 374
    :cond_d
    const/4 v1, 0x2

    if-ne v8, v1, :cond_15

    .line 375
    const/4 v1, -0x1

    if-ne v7, v1, :cond_e

    .line 376
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 378
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 379
    .local v19, y:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 380
    .local v18, x:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 382
    .local v15, unlockPos:I
    :goto_4
    move/from16 v0, v19

    float-to-int v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 383
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

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_13

    .line 386
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->isRealVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_10

    .line 388
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

    .line 397
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_Y_FAR_ENOUGH_REMOVE_MMS:I

    if-ge v1, v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    if-nez v1, :cond_11

    .line 398
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 400
    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    add-int/lit8 v2, v2, -0x1e

    if-le v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    if-eqz v1, :cond_b

    .line 401
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mRemoveNotification:Z

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->OnRemoveNotification()V

    goto/16 :goto_3

    .line 381
    .end local v15           #unlockPos:I
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 392
    .restart local v15       #unlockPos:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_10

    .line 393
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

    goto :goto_5

    .line 404
    .end local v15           #unlockPos:I
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 405
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    int-to-float v1, v1

    add-float v1, v1, v18

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    if-eqz v1, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-interface {v1, v2}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragMoveH(I)V

    goto/16 :goto_3

    .line 411
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_15
    const/4 v1, 0x1

    if-eq v8, v1, :cond_16

    const/4 v1, 0x6

    if-eq v8, v1, :cond_16

    const/4 v1, 0x3

    if-ne v8, v1, :cond_b

    .line 414
    :cond_16
    const/4 v1, -0x1

    if-eq v7, v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-eq v7, v1, :cond_18

    .line 415
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 417
    :cond_18
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 418
    .restart local v19       #y:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    .line 419
    .restart local v18       #x:F
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mPointerId:I

    .line 420
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_1b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    .line 422
    .restart local v15       #unlockPos:I
    :goto_6
    move/from16 v0, v19

    float-to-int v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaY:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 423
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

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 426
    .local v17, velocityY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 427
    .local v16, velocityX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    .line 428
    .local v13, escapeVelocity:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    .line 429
    .local v14, escapeVelocityUnlock:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_Y_FAR_ENOUGH:I

    if-ge v1, v2, :cond_1c

    const/4 v10, 0x1

    .line 430
    .local v10, dragFarEnough:Z
    :goto_7
    const/4 v1, 0x0

    cmpg-float v1, v17, v1

    if-gez v1, :cond_1d

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1d

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d

    const/4 v12, 0x1

    .line 432
    .local v12, dragFastEnoughUp:Z
    :goto_8
    const/4 v1, 0x0

    cmpl-float v1, v17, v1

    if-lez v1, :cond_1e

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_1e

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    const/4 v11, 0x1

    .line 434
    .local v11, dragFastEnoughDown:Z
    :goto_9
    if-nez v12, :cond_19

    if-nez v11, :cond_1f

    if-eqz v10, :cond_1f

    .line 435
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int/2addr v1, v15

    neg-int v3, v1

    .line 436
    .restart local v3       #animSpace:I
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v1, v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-ne v1, v2, :cond_b

    .line 439
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    goto/16 :goto_3

    .line 421
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    .end local v13           #escapeVelocity:F
    .end local v14           #escapeVelocityUnlock:F
    .end local v15           #unlockPos:I
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 429
    .restart local v13       #escapeVelocity:F
    .restart local v14       #escapeVelocityUnlock:F
    .restart local v15       #unlockPos:I
    .restart local v16       #velocityX:F
    .restart local v17       #velocityY:F
    :cond_1c
    const/4 v10, 0x0

    goto :goto_7

    .line 430
    .restart local v10       #dragFarEnough:Z
    :cond_1d
    const/4 v12, 0x0

    goto :goto_8

    .line 432
    .restart local v12       #dragFastEnoughUp:Z
    :cond_1e
    const/4 v11, 0x0

    goto :goto_9

    .line 443
    .restart local v11       #dragFastEnoughDown:Z
    :cond_1f
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_V:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    sub-int v3, v1, v2

    .line 445
    .restart local v3       #animSpace:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_3

    .line 447
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    .end local v13           #escapeVelocity:F
    .end local v14           #escapeVelocityUnlock:F
    .end local v15           #unlockPos:I
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :cond_20
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTouchDeltaX:I

    int-to-float v1, v1

    add-float v1, v1, v18

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 451
    .restart local v17       #velocityY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 452
    .restart local v16       #velocityX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY:F

    .line 453
    .restart local v13       #escapeVelocity:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_ESCAPE_VELOCITY_UNLOCK:F

    .line 454
    .restart local v14       #escapeVelocityUnlock:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_X_FAR_ENOUGH:I

    if-le v1, v2, :cond_26

    const/4 v10, 0x1

    .line 455
    .restart local v10       #dragFarEnough:Z
    :goto_a
    const/4 v1, 0x0

    cmpl-float v1, v16, v1

    if-lez v1, :cond_27

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_27

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_27

    const/4 v12, 0x1

    .line 457
    .restart local v12       #dragFastEnoughUp:Z
    :goto_b
    const/4 v1, 0x0

    cmpg-float v1, v16, v1

    if-gez v1, :cond_28

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_28

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_28

    const/4 v11, 0x1

    .line 459
    .restart local v11       #dragFastEnoughDown:Z
    :goto_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-lez v1, :cond_21

    if-nez v12, :cond_24

    :cond_21
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v1, :cond_22

    if-nez v11, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-lez v1, :cond_23

    if-nez v11, :cond_23

    if-nez v10, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v1, :cond_29

    if-nez v12, :cond_29

    if-eqz v10, :cond_29

    .line 463
    :cond_24
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->UNLOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 464
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, v1, v2

    .line 465
    .restart local v3       #animSpace:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    if-gez v1, :cond_25

    .line 466
    neg-int v3, v3

    .line 468
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_3

    .line 454
    .end local v3           #animSpace:I
    .end local v10           #dragFarEnough:Z
    .end local v11           #dragFastEnoughDown:Z
    .end local v12           #dragFastEnoughUp:Z
    :cond_26
    const/4 v10, 0x0

    goto/16 :goto_a

    .line 455
    .restart local v10       #dragFarEnough:Z
    :cond_27
    const/4 v12, 0x0

    goto :goto_b

    .line 457
    .restart local v12       #dragFastEnoughUp:Z
    :cond_28
    const/4 v11, 0x0

    goto :goto_c

    .line 470
    .restart local v11       #dragFastEnoughDown:Z
    :cond_29
    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->LOCK_H:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 471
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    neg-int v3, v1

    .line 472
    .restart local v3       #animSpace:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosX:I

    const/16 v4, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->startAnim(IIILandroid/view/View;Landroid/view/View;)Z

    goto/16 :goto_3

    .line 477
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
    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public stepUnlockDisappearAnim()V
    .locals 21

    .prologue
    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050015

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 638
    .local v16, statusBarHeight:I
    const/4 v13, 0x0

    .line 639
    .local v13, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v13, v18, v16

    .line 642
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

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mDisappearWhenUnlock:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 644
    .local v9, dstView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_3

    .line 642
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 646
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 647
    .local v5, dstBottom:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 648
    .local v8, dstTop:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v6, v18, 0x2

    .line 649
    .local v6, dstHeight:I
    add-int v18, v8, v5

    div-int/lit8 v3, v18, 0x2

    .line 651
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

    .line 652
    .local v11, offset:F
    move v12, v11

    .line 654
    .local v12, old:F
    int-to-float v0, v6

    move/from16 v18, v0

    add-float v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_VIEW_FADE_OUT:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 655
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 659
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v11

    if-eqz v18, :cond_2

    .line 660
    invoke-virtual {v9, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 665
    .end local v3           #centre:I
    .end local v5           #dstBottom:I
    .end local v6           #dstHeight:I
    .end local v8           #dstTop:I
    .end local v9           #dstView:Landroid/view/View;
    .end local v11           #offset:F
    .end local v12           #old:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->POS_OF_DIVIDER_OUT:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v14, v0

    .line 666
    .local v14, posDividerOut:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->mms:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_30DP:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_ICON_FADE_OUT:F

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 692
    .local v15, rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 693
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_5

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 698
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_6

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDownForEmail()V

    .line 742
    .end local v15           #rate:F
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockLimitedPos:I

    move/from16 v17, v0

    .line 743
    .local v17, unlockPos:I
    :goto_5
    move/from16 v8, v17

    .line 744
    .restart local v8       #dstTop:I
    mul-int/lit8 v18, v17, 0x2

    add-int v5, v18, v16

    .line 745
    .restart local v5       #dstBottom:I
    sub-int v7, v5, v8

    .line 746
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

    .line 747
    .restart local v11       #offset:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v11

    if-eqz v18, :cond_7

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mStatusbarScreenshot:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 751
    :cond_7
    const/high16 v18, 0x3f80

    sub-float v11, v18, v11

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v11

    if-eqz v18, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 669
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

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v14

    if-gtz v18, :cond_9

    .line 671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v4, v14, v18

    .line 673
    .local v4, dividerRate:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_DIVIDER_FADE_OUT:F

    move/from16 v18, v0

    div-float v4, v4, v18

    .line 674
    const/high16 v18, 0x3f80

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v19

    const/high16 v20, 0x3f80

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    sub-float v4, v18, v19

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 677
    .end local v4           #dividerRate:F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->DRAG_Y_FAR_ENOUGH:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v4, v0

    .line 678
    .restart local v4       #dividerRate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_DIVIDER_FADE_BLUE:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_DIVIDER_FADE_BLUE:F

    move/from16 v18, v0

    div-float v4, v4, v18

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDividerBlue:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    sub-float v19, v19, v4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockDivider:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 701
    .end local v4           #dividerRate:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->topApp:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    .line 705
    .local v2, alpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v2, v18

    if-eqz v18, :cond_b

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 709
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_80DP:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_ICON_FADE_OUT:F

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 710
    .restart local v15       #rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 711
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_6

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 716
    .end local v2           #alpha:F
    .end local v15           #rate:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->phone:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    if-nez v18, :cond_d

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDownForEmail()V

    .line 723
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_30DP:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_ICON_FADE_OUT:F

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 724
    .restart local v15       #rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 725
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_6

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 729
    .end local v15           #rate:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v18, v0

    sget-object v19, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->email:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/LockScreenMz;->iconDropDown(Landroid/widget/ImageView;)V

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->ICON_ANIM_OFFSET_100DP:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->DISTANCE_OF_ICON_FADE_OUT:F

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 735
    .restart local v15       #rate:F
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v18

    const/high16 v19, 0x3f80

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 736
    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    sub-float v19, v19, v15

    const/high16 v20, 0x3f80

    sub-float v20, v20, v15

    mul-float v19, v19, v20

    sub-float v15, v18, v19

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getAlpha()F

    move-result v18

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_6

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mEmailIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 742
    .end local v15           #rate:F
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 190
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 193
    :cond_0
    return-void
.end method

.method public updateMissedCall(I)V
    .locals 0
    .parameter "missedCallCount"

    .prologue
    .line 827
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateMissedCall(I)V

    .line 828
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustPhoneIcont()V

    .line 829
    return-void
.end method

.method public updateNewEamil(I)V
    .locals 0
    .parameter "newEmailCount"

    .prologue
    .line 837
    iput p1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnreadEmailCount:I

    .line 838
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustEmailIcon()V

    .line 839
    return-void
.end method

.method public updateUnreadSms(I)V
    .locals 0
    .parameter "unreadSmsCount"

    .prologue
    .line 832
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->updateUnreadSms(I)V

    .line 833
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->adjustMmsIcon()V

    .line 834
    return-void
.end method
