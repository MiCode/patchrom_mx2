.class public Lcom/meizu/internal/policy/impl/LockScreenSe;
.super Lcom/meizu/internal/policy/impl/LockViewBaseSe;
.source "LockScreenSe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;
    }
.end annotation


# static fields
.field private static final DEBUG_CONFIGURATION:Z


# instance fields
.field private final DRAG_ANIM_DURATION:I

.field downX:I

.field downY:I

.field private mAnimMode:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

.field mIsDragMode:Z

.field mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

.field mPowerManager:Landroid/os/PowerManager;

.field private mRemoveNotification:Z


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
    .line 64
    const v6, 0x1090064

    const v7, 0x1090064

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/meizu/internal/policy/impl/LockControllerMonitor;IILcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V

    .line 42
    new-instance v0, Lcom/meizu/internal/policy/impl/LockScreenSe$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockScreenSe$1;-><init>(Lcom/meizu/internal/policy/impl/LockScreenSe;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->DRAG_ANIM_DURATION:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mRemoveNotification:Z

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->downX:I

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->downY:I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mIsDragMode:Z

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->setFocusable(Z)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->setFocusableInTouchMode(Z)V

    .line 69
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->setDescendantFocusability(I)V

    .line 72
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    iget v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 75
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 76
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V

    .line 78
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mTimeView:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;

    new-instance v1, Lcom/meizu/internal/policy/impl/LockScreenSe$2;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/LockScreenSe$2;-><init>(Lcom/meizu/internal/policy/impl/LockScreenSe;)V

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method private getAccelerateAlpha(I)I
    .locals 5
    .parameter "dragPos"

    .prologue
    const/high16 v4, 0x4348

    .line 145
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    const/high16 v3, 0x4420

    div-float v1, v2, v3

    .line 146
    .local v1, rate:F
    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 147
    mul-float/2addr v1, v1

    .line 148
    mul-float v2, v1, v4

    sub-float v2, v4, v2

    float-to-int v0, v2

    .line 149
    .local v0, alpha:I
    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 129
    iget-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    sget-object v4, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    if-eq v3, v4, :cond_2

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 141
    :cond_1
    :goto_0
    return v2

    .line 132
    :cond_2
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 133
    .local v2, ret:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 134
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 135
    .local v0, action:I
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 136
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    sget-object v4, Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockScreenSe$ANIM_MODE;

    if-ne v3, v4, :cond_1

    .line 137
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 138
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onAttachedToWindow()V

    .line 107
    const-string v0, "LockViewBase"

    const-string v1, "***** LOCK ATTACHED TO WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
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

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
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

    .line 112
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->updateConfiguration()V

    .line 113
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->updateConfiguration()V

    .line 125
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mIsDragMode:Z

    if-eqz v1, :cond_1

    .line 162
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mIsDragMode:Z

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->downX:I

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->downY:I

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mIsDragMode:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 175
    iget-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mIsDragMode:Z

    if-nez v5, :cond_1

    .line 176
    invoke-super {p0, p1}, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 191
    :cond_0
    :goto_0
    return v4

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 178
    .local v0, action:I
    if-eq v0, v4, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 181
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->mIsDragMode:Z

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->downX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 184
    .local v2, spaceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/meizu/internal/policy/impl/LockScreenSe;->downY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    .line 185
    .local v3, spaceY:I
    mul-int v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int v6, v3, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v1, v5, v6

    .line 186
    .local v1, space:I
    int-to-double v5, v1

    const-wide/high16 v7, 0x3fe0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v1, v5

    .line 187
    const/16 v5, 0x12c

    if-le v1, v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockScreenSe;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 98
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 101
    :cond_0
    return-void
.end method
