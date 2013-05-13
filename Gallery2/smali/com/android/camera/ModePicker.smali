.class public Lcom/android/camera/ModePicker;
.super Landroid/widget/RelativeLayout;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ModePicker$OnModeChangeListener;
    }
.end annotation


# instance fields
.field private final DISABLED_COLOR:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentMode:I

.field private mCurrentModeBar:Landroid/view/View;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

.field private mModeChanged:Z

.field private mModeSelectionFrame:Landroid/view/View;

.field private mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

.field private mSelectionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 121
    new-instance v0, Lcom/android/camera/ModePicker$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ModePicker$1;-><init>(Lcom/android/camera/ModePicker;)V

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ModePicker;->DISABLED_COLOR:I

    .line 71
    const v0, 0x7f050006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mFadeIn:Landroid/view/animation/Animation;

    .line 73
    const v0, 0x7f050007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    .line 75
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/camera/ModePicker;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ModePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/ModePicker;->mModeChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ModePicker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ModePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->changeToSelectedMode()V

    return-void
.end method

.method private changeToSelectedMode()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    iget v1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    invoke-interface {v0, v1}, Lcom/android/camera/ModePicker$OnModeChangeListener;->onModeChanged(I)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ModePicker;->mModeChanged:Z

    .line 166
    return-void
.end method

.method private enableModeSelection(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 161
    return-void
.end method

.method private registerOnClickListener()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method private updateModeState()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method


# virtual methods
.method public dismissModeSelection()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-boolean v1, p0, Lcom/android/camera/ModePicker;->mSelectionEnabled:Z

    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0, v0}, Lcom/android/camera/ModePicker;->enableModeSelection(Z)V

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 188
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    .line 85
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x2

    const v0, 0x7f0d00e7

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 87
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x1

    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 89
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/android/camera/ModePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    aput-object v0, v1, v2

    .line 104
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->registerOnClickListener()V

    .line 105
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 277
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 279
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/ModePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 283
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getWidth()I

    move-result v5

    .line 284
    .local v5, viewWidth:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 286
    .local v1, iconWidth:I
    sub-int v6, v5, v1

    div-int/lit8 v3, v6, 0x2

    .line 287
    .local v3, padding:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    mul-int/2addr v7, v5

    add-int v2, v6, v7

    .line 288
    .local v2, l:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    add-int v7, v2, v3

    sub-int v8, p5, p3

    iget-object v9, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v2, v3

    add-int/2addr v9, v1

    sub-int v10, p5, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 305
    .end local v1           #iconWidth:I
    .end local v2           #l:I
    .end local v3           #padding:I
    .end local v5           #viewWidth:I
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getHeight()I

    move-result v4

    .line 295
    .local v4, viewHeight:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 297
    .local v0, iconHeight:I
    sub-int v6, v4, v0

    div-int/lit8 v3, v6, 0x2

    .line 298
    .restart local v3       #padding:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    mul-int/2addr v7, v4

    add-int v2, v6, v7

    .line 299
    .restart local v2       #l:I
    iget-object v6, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    const/4 v7, 0x0

    add-int v8, v2, v3

    iget-object v9, p0, Lcom/android/camera/ModePicker;->mCurrentModeBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v10, v2, v3

    add-int/2addr v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onOtherPopupShowed()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ModePicker;->dismissModeSelection()Z

    .line 119
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 195
    iput p1, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    .line 198
    const/4 v1, 0x1

    .line 199
    .local v1, enbaled:Z
    iget v5, p0, Lcom/android/camera/ModePicker;->mCurrentMode:I

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    .local v0, arr$:[Lcom/android/camera/ui/RotateImageView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, v:Lcom/android/camera/ui/TwoStateImageView;
    invoke-virtual {v4, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v4           #v:Lcom/android/camera/ui/TwoStateImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 206
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionFrame:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ModePicker;->updateModeState()V

    .line 237
    :cond_1
    return-void
.end method

.method public setOnModeChangeListener(Lcom/android/camera/ModePicker$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/camera/ModePicker;->mListener:Lcom/android/camera/ModePicker$OnModeChangeListener;

    .line 192
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/camera/ModePicker;->mModeSelectionIcon:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method
