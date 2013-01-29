.class public abstract Lcom/android/camera/ui/IndicatorControl;
.super Landroid/widget/RelativeLayout;
.source "IndicatorControl.java"

# interfaces
.implements Lcom/android/camera/ui/OtherSettingsPopup$Listener;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mCameraPicker:Lcom/android/camera/ui/CameraPicker;

.field protected mCurrentMode:I

.field mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/AbstractIndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field protected mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

.field protected mZoomControl:Lcom/android/camera/ui/ZoomControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method public dismissSettingPopup()Z
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControl;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 183
    .local v1, v:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->invalidate()V

    .line 185
    const/4 v2, 0x1

    .line 188
    .end local v1           #v:Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onRestorePreferencesClicked()V

    .line 172
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 219
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .line 221
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 222
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    iget v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    if-ne v3, v6, :cond_0

    .line 228
    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 228
    goto :goto_1

    .line 232
    .end local v2           #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/CameraPicker;->setEnabled(Z)V

    .line 234
    iget v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    if-ne v3, v6, :cond_3

    .line 235
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorControl;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/CameraPicker;->setVisibility(I)V

    .line 238
    :cond_3
    return-void

    :cond_4
    move v4, v5

    .line 235
    goto :goto_2
.end method

.method public setOnIndicatorEventListener(Lcom/android/camera/ui/OnIndicatorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    .line 77
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControl;->getChildCount()I

    move-result v0

    .line 67
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/IndicatorControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_0

    .line 70
    check-cast v2, Lcom/android/camera/ui/Rotatable;

    .end local v2           #view:Landroid/view/View;
    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
