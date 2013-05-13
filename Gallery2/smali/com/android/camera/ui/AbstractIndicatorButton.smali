.class public abstract Lcom/android/camera/ui/AbstractIndicatorButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "AbstractIndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AbstractIndicatorButton$1;,
        Lcom/android/camera/ui/AbstractIndicatorButton$MainHandler;,
        Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;
    }
.end annotation


# instance fields
.field protected final HIGHLIGHT_COLOR:I

.field private final MSG_DISMISS_POPUP:I

.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

.field protected mPopup:Lcom/android/camera/ui/AbstractSettingPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/camera/ui/AbstractIndicatorButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/AbstractIndicatorButton$MainHandler;-><init>(Lcom/android/camera/ui/AbstractIndicatorButton;Lcom/android/camera/ui/AbstractIndicatorButton$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->MSG_DISMISS_POPUP:I

    .line 49
    const v0, 0x7f050015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mFadeIn:Landroid/view/animation/Animation;

    .line 50
    const v0, 0x7f050016

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mFadeOut:Landroid/view/animation/Animation;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->HIGHLIGHT_COLOR:I

    .line 52
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setClickable(Z)V

    .line 56
    return-void
.end method

.method private showPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->initializePopup()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getDegree()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->clearAnimation()V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v0, p0, v3}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 129
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractSettingPopup;->clearAnimation()V

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v1, p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 143
    const/4 v0, 0x1

    .line 145
    :cond_1
    return v0
.end method

.method protected abstract initializePopup()V
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onOtherPopupShowed()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 61
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 80
    .local v0, action:I
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_4

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->showPopup()V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    :goto_1
    move v1, v2

    .line 87
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    goto :goto_1

    .line 88
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 p1, 0x0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 105
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 107
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    .line 115
    :cond_0
    return-void
.end method
