.class public Lcom/android/camera/ui/IndicatorControlBarContainer;
.super Lcom/android/camera/ui/IndicatorControlContainer;
.source "IndicatorControlBarContainer.java"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

.field private mSecondLevelFadeIn:Landroid/view/animation/Animation;

.field private mSecondLevelFadeOut:Landroid/view/animation/Animation;

.field private mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControlContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Lcom/android/camera/ui/IndicatorControlBarContainer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/IndicatorControlBarContainer$1;-><init>(Lcom/android/camera/ui/IndicatorControlBarContainer;)V

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 47
    const v0, 0x7f050002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeIn:Landroid/view/animation/Animation;

    .line 49
    const v0, 0x7f050003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    const v0, 0x7f050013

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    .line 54
    const v0, 0x7f050014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/IndicatorControlBarContainer;)Lcom/android/camera/ui/SecondLevelIndicatorControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/IndicatorControlBarContainer;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/IndicatorControlBarContainer;)Lcom/android/camera/ui/IndicatorControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    return-object v0
.end method

.method private leaveSecondLevelIndicator()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method


# virtual methods
.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->dismissSettingPopup()Z

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dismissSettingPopup()Z

    move-result v0

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlBar;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/IndicatorControlBar;->setOnIndicatorEventListener(Lcom/android/camera/ui/OnIndicatorEventListener;)V

    .line 64
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setOnIndicatorEventListener(Lcom/android/camera/ui/OnIndicatorEventListener;)V

    .line 67
    return-void
.end method

.method public onIndicatorEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    iget-object v1, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setVisibility(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/IndicatorControlBarContainer;->leaveSecondLevelIndicator()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlBar;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setEnabled(Z)V

    .line 177
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mIndicatorControlBar:Lcom/android/camera/ui/IndicatorControlBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/IndicatorControlBar;->setOrientation(IZ)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlBarContainer;->mSecondLevelIndicatorControlBar:Lcom/android/camera/ui/SecondLevelIndicatorControlBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->setOrientation(IZ)V

    .line 84
    return-void
.end method
