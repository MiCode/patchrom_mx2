.class public Lcom/meizu/widget/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MultiWaveView$MyPoint;,
        Lcom/meizu/widget/MultiWaveView$TargetDrawable;,
        Lcom/meizu/widget/MultiWaveView$Tweener;,
        Lcom/meizu/widget/MultiWaveView$Ease;,
        Lcom/meizu/widget/MultiWaveView$AnimationBundle;,
        Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;,
        Lcom/meizu/widget/MultiWaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static CHEVRON_ANIMATION_DURATION:I = 0x0

.field private static CHEVRON_INCREMENTAL_DELAY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MultiWaveView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f


# instance fields
.field private mActivePointerId:I

.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/meizu/widget/MultiWaveView$Tweener;

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/MultiWaveView$TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

.field private mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mMoveAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

.field private mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

.field private mMoveUpdateListener:Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/MultiWaveView$TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    sget-object v8, Lcom/meizu/widget/MultiWaveView$Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 105
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 107
    new-instance v8, Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;-><init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    .line 108
    new-instance v8, Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;-><init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    .line 109
    new-instance v8, Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;-><init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    .line 118
    new-instance v8, Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;-><init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mMoveAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    .line 120
    new-instance v8, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;-><init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$1;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mMoveUpdateListener:Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;

    .line 129
    const/4 v8, 0x3

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    .line 130
    const/4 v8, 0x0

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mVibrationDuration:I

    .line 132
    const/4 v8, -0x1

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    .line 139
    const/4 v8, 0x0

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    .line 140
    const/4 v8, 0x0

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    .line 180
    new-instance v8, Lcom/meizu/widget/MultiWaveView$1;

    invoke-direct {v8, p0}, Lcom/meizu/widget/MultiWaveView$1;-><init>(Lcom/meizu/widget/MultiWaveView;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 187
    new-instance v8, Lcom/meizu/widget/MultiWaveView$2;

    invoke-direct {v8, p0}, Lcom/meizu/widget/MultiWaveView$2;-><init>(Lcom/meizu/widget/MultiWaveView;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 195
    new-instance v8, Lcom/meizu/widget/MultiWaveView$3;

    invoke-direct {v8, p0}, Lcom/meizu/widget/MultiWaveView$3;-><init>(Lcom/meizu/widget/MultiWaveView;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 203
    new-instance v8, Lcom/meizu/widget/MultiWaveView$4;

    invoke-direct {v8, p0}, Lcom/meizu/widget/MultiWaveView$4;-><init>(Lcom/meizu/widget/MultiWaveView;)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 219
    const/16 v8, 0x30

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mGravity:I

    .line 220
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/meizu/widget/MultiWaveView;->mInitialLayout:Z

    .line 874
    const/4 v8, -0x1

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 231
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x10e003a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/meizu/widget/MultiWaveView;->CHEVRON_INCREMENTAL_DELAY:I

    .line 232
    const v8, 0x10e003b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/meizu/widget/MultiWaveView;->CHEVRON_ANIMATION_DURATION:I

    .line 234
    sget-object v8, Lcom/android/internal/R$styleable;->MultiWaveView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    iget v9, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    .line 236
    const/16 v8, 0x8

    iget v9, p0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    .line 237
    const/4 v8, 0x7

    iget v9, p0, Lcom/meizu/widget/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mVibrationDuration:I

    .line 239
    const/16 v8, 0x9

    iget v9, p0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    .line 241
    new-instance v8, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v6, v9}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 243
    iget-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v8}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mTapRadius:F

    .line 244
    new-instance v8, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v6, v9}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 246
    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/meizu/widget/MultiWaveView;->mAlwaysTrackFinger:Z

    .line 249
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 250
    .local v5, outValue:Landroid/util/TypedValue;
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 251
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v8}, Lcom/meizu/widget/MultiWaveView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 252
    .local v2, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 253
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 254
    .local v1, chevron:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    iget v8, p0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    if-ge v4, v8, :cond_1

    .line 255
    iget-object v9, p0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    :cond_0
    new-instance v8, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-direct {v8, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;-><init>(Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V

    goto :goto_2

    .line 252
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .end local v1           #chevron:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .end local v2           #chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    .end local v3           #i:I
    .end local v4           #k:I
    :cond_2
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 262
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v8}, Lcom/meizu/widget/MultiWaveView;->internalSetTargetResources(I)V

    .line 264
    :cond_3
    iget-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 265
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must specify at least one target drawable"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 269
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 270
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    .line 271
    .local v7, resourceId:I
    if-nez v7, :cond_6

    .line 272
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must specify target descriptions"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 274
    :cond_6
    invoke-virtual {p0, v7}, Lcom/meizu/widget/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 278
    .end local v7           #resourceId:I
    :cond_7
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 279
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    .line 280
    .restart local v7       #resourceId:I
    if-nez v7, :cond_8

    .line 281
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must specify direction descriptions"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 283
    :cond_8
    invoke-virtual {p0, v7}, Lcom/meizu/widget/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 286
    .end local v7           #resourceId:I
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    sget-object v8, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    const/4 v8, 0x0

    const/16 v9, 0x30

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/meizu/widget/MultiWaveView;->mGravity:I

    .line 291
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    iget v8, p0, Lcom/meizu/widget/MultiWaveView;->mVibrationDuration:I

    if-lez v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {p0, v8}, Lcom/meizu/widget/MultiWaveView;->setVibrateEnabled(Z)V

    .line 294
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->assignDefaultsIfNeeded()V

    .line 295
    return-void

    .line 293
    :cond_a
    const/4 v8, 0x0

    goto :goto_3
.end method

.method static synthetic access$1000(Lcom/meizu/widget/MultiWaveView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/MultiWaveView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$1102(Lcom/meizu/widget/MultiWaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/meizu/widget/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/widget/MultiWaveView;)Lcom/meizu/widget/MultiWaveView$MyPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleCancel(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/widget/MultiWaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/MultiWaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/widget/MultiWaveView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/widget/MultiWaveView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/widget/MultiWaveView;)Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/MultiWaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/widget/MultiWaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/widget/MultiWaveView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method private activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->cancel()V

    .line 404
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/meizu/widget/MultiWaveView$Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 411
    return-void
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1278
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1279
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1280
    invoke-direct {p0, v1}, Lcom/meizu/widget/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1281
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/meizu/widget/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1284
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1285
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1288
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/meizu/widget/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 1279
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1291
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1294
    invoke-virtual {p0, p1}, Lcom/meizu/widget/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1295
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1297
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1120
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    .line 1123
    :cond_0
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 1124
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    .line 1127
    :cond_1
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1130
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getResolvedLayoutDirection()I

    move-result v1

    .line 1131
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1133
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1142
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/meizu/widget/MultiWaveView;->mHorizontalInset:I

    .line 1145
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1154
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/meizu/widget/MultiWaveView;->mVerticalInset:I

    .line 1157
    :goto_1
    return-void

    .line 1135
    :pswitch_1
    iput v3, p0, Lcom/meizu/widget/MultiWaveView;->mHorizontalInset:I

    goto :goto_0

    .line 1138
    :pswitch_2
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mHorizontalInset:I

    goto :goto_0

    .line 1147
    :sswitch_0
    iput v3, p0, Lcom/meizu/widget/MultiWaveView;->mVerticalInset:I

    goto :goto_1

    .line 1150
    :sswitch_1
    iput p2, p0, Lcom/meizu/widget/MultiWaveView;->mVerticalInset:I

    goto :goto_1

    .line 1133
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1145
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 415
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->cancel()V

    .line 416
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/meizu/widget/MultiWaveView$Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 425
    return-void
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 473
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 474
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 475
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 476
    .local v2, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    sget-object v3, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v2           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    .line 479
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    invoke-interface {v0}, Lcom/meizu/widget/MultiWaveView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 512
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->vibrate()V

    .line 503
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/meizu/widget/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 506
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1263
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0xc8

    const/4 v3, 0x0

    .line 578
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    .line 579
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    .line 581
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 584
    invoke-direct {p0, v0}, Lcom/meizu/widget/MultiWaveView;->highlightSelected(I)V

    .line 587
    const/16 v2, 0x4b0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v4, v5}, Lcom/meizu/widget/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 588
    invoke-direct {p0, v0}, Lcom/meizu/widget/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 589
    iget-boolean v2, p0, Lcom/meizu/widget/MultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v2}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->stop()V

    .line 600
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/meizu/widget/MultiWaveView;->setGrabbedState(I)V

    .line 601
    return-void

    .end local v1           #targetHit:Z
    :cond_1
    move v1, v3

    .line 579
    goto :goto_0

    .line 595
    .restart local v1       #targetHit:Z
    :cond_2
    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v6, v4, v5}, Lcom/meizu/widget/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 597
    invoke-direct {p0, v2, v3}, Lcom/meizu/widget/MultiWaveView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 298
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    :cond_0
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1314
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1315
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v0, 0x0

    .line 1320
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getScaledTapRadiusSquared()F
    .locals 3

    .prologue
    .line 1268
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    const v1, 0x3fa66666

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mTapRadius:F

    mul-float v0, v1, v2

    .line 1273
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/widget/MultiWaveView;->square(F)F

    move-result v1

    return v1

    .line 1271
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mTapRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    :cond_0
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1302
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1303
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v0, 0x0

    .line 1308
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    .line 920
    iget-boolean v4, p0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    if-eqz v4, :cond_0

    .line 922
    :cond_0
    if-nez p1, :cond_3

    .line 923
    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    if-eq v4, v5, :cond_2

    .line 946
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v2, v4, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 927
    .local v2, x:F
    iget-object v4, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v3, v4, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 945
    .local v3, y:F
    :goto_1
    const/4 v4, 0x5

    invoke-direct {p0, v4, v2, v3}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    goto :goto_0

    .line 929
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 930
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 931
    .local v1, pid:I
    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    if-ne v1, v4, :cond_1

    .line 934
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 935
    .restart local v2       #x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 936
    .restart local v3       #y:F
    iput v5, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    goto :goto_1
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 877
    if-nez p1, :cond_2

    .line 878
    iget v3, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v1, v3, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 882
    .local v1, x:F
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v2, v3, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 890
    .local v2, y:F
    :goto_1
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    .line 891
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 892
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    .line 893
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->ping()V

    goto :goto_0

    .line 884
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 885
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    .line 886
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 887
    .restart local v1       #x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 888
    .restart local v2       #y:F
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->cancelMove2TargetAnimation()V

    goto :goto_1
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;Z)V

    .line 951
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;Z)V
    .locals 37
    .parameter "event"
    .parameter "ignorSnap"

    .prologue
    .line 954
    const/16 v17, 0x0

    .line 955
    .local v17, pointerIndex:I
    if-nez p1, :cond_1

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    .line 963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 966
    :cond_2
    const/4 v5, -0x1

    .line 967
    .local v5, activeTarget:I
    if-nez p1, :cond_7

    const/4 v11, 0x0

    .line 968
    .local v11, historySize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 969
    .local v27, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 970
    .local v16, ntargets:I
    const/16 v31, 0x0

    .line 971
    .local v31, x:F
    const/16 v32, 0x0

    .line 972
    .local v32, y:F
    const/4 v13, 0x0

    .local v13, k:I
    :goto_2
    add-int/lit8 v33, v11, 0x1

    move/from16 v0, v33

    if-ge v13, v0, :cond_f

    .line 974
    if-nez p1, :cond_8

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v9, v0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 976
    .local v9, eventX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v10, v0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 982
    .local v10, eventY:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v9, v33

    .line 983
    .local v29, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v10, v33

    .line 984
    .local v30, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 985
    .local v28, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 986
    .local v18, scale:F
    :goto_4
    mul-float v14, v29, v18

    .line 987
    .local v14, limitX:F
    mul-float v15, v30, v18

    .line 988
    .local v15, limitY:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    .line 990
    .local v7, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_3

    .line 991
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/meizu/widget/MultiWaveView;->trySwitchToFirstTouchState(FF)Z

    .line 994
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 997
    if-eqz p2, :cond_c

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    move/from16 v33, v0

    const/16 v34, 0x0

    sub-float v20, v33, v34

    .line 1001
    .local v20, snapRadius:F
    :goto_5
    mul-float v19, v20, v20

    .line 1003
    .local v19, snapDistance2:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    move/from16 v0, v16

    if-ge v12, v0, :cond_e

    .line 1004
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1006
    .local v21, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    int-to-double v0, v12

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    sub-double v33, v33, v35

    const-wide/high16 v35, 0x4000

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v25, v33, v35

    .line 1007
    .local v25, targetMinRad:D
    int-to-double v0, v12

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    add-double v33, v33, v35

    const-wide/high16 v35, 0x4000

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v23, v33, v35

    .line 1008
    .local v23, targetMaxRad:D
    invoke-virtual/range {v21 .. v21}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1009
    cmpl-double v33, v7, v25

    if-lez v33, :cond_4

    cmpg-double v33, v7, v23

    if-lez v33, :cond_5

    :cond_4
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v7

    cmpl-double v33, v33, v25

    if-lez v33, :cond_d

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v7

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_d

    :cond_5
    const/4 v6, 0x1

    .line 1013
    .local v6, angleMatches:Z
    :goto_7
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_6

    .line 1014
    move v5, v12

    .line 1003
    .end local v6           #angleMatches:Z
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 967
    .end local v7           #angleRad:D
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    .end local v11           #historySize:I
    .end local v12           #i:I
    .end local v13           #k:I
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v16           #ntargets:I
    .end local v18           #scale:F
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    .end local v27           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    .end local v31           #x:F
    .end local v32           #y:F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    goto/16 :goto_1

    .line 978
    .restart local v11       #historySize:I
    .restart local v13       #k:I
    .restart local v16       #ntargets:I
    .restart local v27       #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    .restart local v31       #x:F
    .restart local v32       #y:F
    :cond_8
    if-ge v13, v11, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    .line 979
    .restart local v9       #eventX:F
    :goto_8
    if-ge v13, v11, :cond_a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    .restart local v10       #eventY:F
    :goto_9
    goto/16 :goto_3

    .line 978
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    goto :goto_8

    .line 979
    .restart local v9       #eventX:F
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    goto :goto_9

    .line 985
    .restart local v10       #eventY:F
    .restart local v28       #touchRadius:F
    .restart local v29       #tx:F
    .restart local v30       #ty:F
    :cond_b
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 1000
    .restart local v7       #angleRad:D
    .restart local v14       #limitX:F
    .restart local v15       #limitY:F
    .restart local v18       #scale:F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .restart local v20       #snapRadius:F
    goto/16 :goto_5

    .line 1009
    .restart local v12       #i:I
    .restart local v19       #snapDistance2:F
    .restart local v21       #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .restart local v23       #targetMaxRad:D
    .restart local v25       #targetMinRad:D
    :cond_d
    const/4 v6, 0x0

    goto :goto_7

    .line 1019
    .end local v12           #i:I
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    :cond_e
    move/from16 v31, v14

    .line 1020
    move/from16 v32, v15

    .line 972
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1023
    .end local v7           #angleRad:D
    .end local v9           #eventX:F
    .end local v10           #eventY:F
    .end local v14           #limitX:F
    .end local v15           #limitY:F
    .end local v18           #scale:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 1027
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v5, v0, :cond_14

    .line 1028
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    .line 1029
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/MultiWaveView;->moveHandleTo(FFZ)V

    .line 1036
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView;->invalidateGlobalRegion(Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V

    .line 1038
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v5, :cond_13

    .line 1040
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    .line 1041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1042
    .restart local v21       #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    sget-object v33, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_10

    .line 1043
    sget-object v33, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 1047
    .end local v21           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_10
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v5, v0, :cond_15

    .line 1048
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1049
    .restart local v21       #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    sget-object v33, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 1050
    sget-object v33, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 1052
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_12

    .line 1053
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/widget/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 1054
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/meizu/widget/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 1056
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_12
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/widget/MultiWaveView;->activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 1061
    .end local v21           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_0

    .line 1031
    :cond_14
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    .line 1032
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/MultiWaveView;->moveHandleTo(FFZ)V

    goto/16 :goto_a

    .line 1058
    :cond_15
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/high16 v35, 0x3f80

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/widget/MultiWaveView;->activateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_b
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    .line 898
    iget-boolean v4, p0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    if-eqz v4, :cond_0

    .line 900
    :cond_0
    if-nez p1, :cond_3

    .line 901
    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    if-eq v4, v5, :cond_2

    .line 917
    :cond_1
    :goto_0
    return-void

    .line 904
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v2, v4, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 905
    .local v2, x:F
    iget-object v4, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v3, v4, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 916
    .local v3, y:F
    :goto_1
    const/4 v4, 0x5

    invoke-direct {p0, v4, v2, v3}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    goto :goto_0

    .line 907
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 908
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 909
    .local v1, pid:I
    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    if-ne v1, v4, :cond_1

    .line 912
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 913
    .restart local v2       #x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 914
    .restart local v3       #y:F
    iput v5, p0, Lcom/meizu/widget/MultiWaveView;->mActivePointerId:I

    goto :goto_1
.end method

.method private hideChevrons()V
    .locals 5

    .prologue
    .line 1224
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 1225
    .local v1, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1226
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1227
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1228
    .local v0, chevron:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-eqz v0, :cond_0

    .line 1229
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setAlpha(F)V

    .line 1226
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1232
    .end local v0           #chevron:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_1
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 14
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 618
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v7}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->cancel()V

    .line 621
    iput-boolean p1, p0, Lcom/meizu/widget/MultiWaveView;->mAnimatingTargets:Z

    .line 622
    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    .line 623
    .local v1, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    .line 625
    .local v0, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v6, 0x3f80

    .line 626
    .local v6, targetScale:F
    :goto_2
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 627
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v3, :cond_3

    .line 628
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 629
    .local v5, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    sget-object v7, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v7}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 630
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    int-to-long v8, v1

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/meizu/widget/MultiWaveView$Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    invoke-static {v5, v8, v9, v10}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 622
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .end local v6           #targetScale:F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    .restart local v1       #duration:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 625
    .restart local v0       #delay:I
    :cond_2
    const v6, 0x3f4ccccd

    goto :goto_2

    .line 639
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v6       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v4, 0x3f80

    .line 640
    .local v4, ringScaleTarget:F
    :goto_4
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    iget-object v8, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    int-to-long v9, v1

    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ease"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/meizu/widget/MultiWaveView$Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "alpha"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "scaleX"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "scaleY"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "delay"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "onUpdate"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    iget-object v13, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "onComplete"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    iget-object v13, p0, Lcom/meizu/widget/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v7}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 650
    return-void

    .line 639
    .end local v4           #ringScaleTarget:F
    :cond_4
    const/high16 v4, 0x3f00

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 610
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 611
    if-eq v0, p1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setAlpha(F)V

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    sget-object v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 606
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->hideUnselected(I)V

    .line 607
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 7
    .parameter "resourceId"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 703
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mTargetResourceId:I

    .line 704
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 705
    .local v0, count:I
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v5}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v3

    .line 706
    .local v3, maxWidth:I
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v5}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v2

    .line 707
    .local v2, maxHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 708
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 709
    .local v4, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    invoke-virtual {v4}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 710
    invoke-virtual {v4}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v4           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    iget v5, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetWidth:I

    if-ne v5, v3, :cond_1

    iget v5, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetHeight:I

    if-eq v5, v2, :cond_2

    .line 713
    :cond_1
    iput v3, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetWidth:I

    .line 714
    iput v2, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetHeight:I

    .line 715
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->requestLayout()V

    .line 720
    :goto_1
    return-void

    .line 717
    :cond_2
    iget v5, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    iget v6, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    invoke-direct {p0, v5, v6}, Lcom/meizu/widget/MultiWaveView;->updateTargetPositions(FF)V

    .line 718
    iget v5, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    iget v6, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    invoke-direct {p0, v5, v6}, Lcom/meizu/widget/MultiWaveView;->updateChevronPositions(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1325
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1326
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1327
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1328
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1329
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1331
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1332
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/MultiWaveView$TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 689
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 690
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 691
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 693
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 694
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 695
    .local v5, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 694
    .end local v5           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 697
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 698
    return-object v2
.end method

.method private moveHandleTo(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setX(F)V

    .line 870
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setY(F)V

    .line 871
    return-void
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1367
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1368
    :cond_0
    const/4 v2, 0x0

    .line 1386
    :cond_1
    :goto_0
    return v2

    .line 1371
    :cond_2
    const/4 v2, 0x0

    .line 1372
    .local v2, result:Z
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1373
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1374
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1375
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1376
    .local v4, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1377
    invoke-virtual {v4, p1, p3}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1378
    const/4 v2, 0x1

    .line 1374
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1382
    .end local v4           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1383
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 349
    move v0, v1

    .line 351
    :goto_0
    return v0

    .line 342
    :sswitch_0
    move v0, p2

    .line 343
    goto :goto_0

    .line 345
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 346
    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1090
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1091
    if-eqz p1, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->vibrate()V

    .line 1094
    :cond_0
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mGrabbedState:I

    .line 1095
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1096
    if-nez p1, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/meizu/widget/MultiWaveView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1101
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/meizu/widget/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1104
    :cond_1
    return-void

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/meizu/widget/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showTargets(Z)V
    .locals 12
    .parameter "animate"

    .prologue
    .line 653
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->stop()V

    .line 654
    iput-boolean p1, p0, Lcom/meizu/widget/MultiWaveView;->mAnimatingTargets:Z

    .line 655
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 656
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 657
    .local v1, duration:I
    :goto_1
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 658
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 659
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 660
    .local v4, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    sget-object v5, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 661
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    int-to-long v6, v1

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/meizu/widget/MultiWaveView$Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 655
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    .restart local v0       #delay:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 669
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    int-to-long v7, v1

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/meizu/widget/MultiWaveView$Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "onComplete"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/meizu/widget/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v5}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 679
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1259
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 8
    .parameter "duration"
    .parameter "alpha"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 823
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/meizu/widget/MultiWaveView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 824
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mBackgroundAnimator:Lcom/meizu/widget/MultiWaveView$Tweener;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mBackgroundAnimator:Lcom/meizu/widget/MultiWaveView$Tweener;

    iget-object v1, v1, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 827
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ease"

    aput-object v4, v3, v6

    sget-object v4, Lcom/meizu/widget/MultiWaveView$Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v4, v3, v7

    const-string v4, "alpha"

    aput-object v4, v3, v5

    const/4 v4, 0x3

    new-array v5, v5, [I

    aput v6, v5, v6

    const/high16 v6, 0x437f

    mul-float/2addr v6, p2

    float-to-int v6, v6

    aput v6, v5, v7

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mBackgroundAnimator:Lcom/meizu/widget/MultiWaveView$Tweener;

    .line 831
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mBackgroundAnimator:Lcom/meizu/widget/MultiWaveView$Tweener;

    iget-object v1, v1, Lcom/meizu/widget/MultiWaveView$Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 833
    :cond_1
    return-void
.end method

.method private startChevronAnimation()V
    .locals 25

    .prologue
    .line 433
    const/high16 v14, 0x3f00

    .line 434
    .local v14, startScale:F
    const/high16 v11, 0x3fc0

    .line 435
    .local v11, endScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v12, v19, v20

    .line 436
    .local v12, handleDrawableWidth:F
    move v5, v12

    .line 437
    .local v5, chevronStartDistance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    move/from16 v19, v0

    const v20, 0x3f4ccccd

    mul-float v20, v20, v12

    sub-float v6, v19, v20

    .line 438
    .local v6, chevronStopDistance:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    move/from16 v20, v0

    div-int v10, v19, v20

    .line 440
    .local v10, directionCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->stop()V

    .line 444
    const/4 v9, 0x0

    .local v9, direction:I
    :goto_1
    if-ge v9, v10, :cond_3

    .line 445
    const-wide v19, 0x401921fb54442d18L

    int-to-double v0, v9

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    int-to-double v0, v10

    move-wide/from16 v21, v0

    div-double v3, v19, v21

    .line 446
    .local v3, angle:D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v15, v0

    .line 447
    .local v15, sx:F
    const/16 v19, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v19, v20

    .line 448
    .local v16, sy:F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v19, 0x0

    mul-float v20, v15, v5

    aput v20, v17, v19

    const/16 v19, 0x1

    mul-float v20, v15, v6

    aput v20, v17, v19

    .line 450
    .local v17, xrange:[F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    mul-float v20, v16, v5

    aput v20, v18, v19

    const/16 v19, 0x1

    mul-float v20, v16, v6

    aput v20, v18, v19

    .line 452
    .local v18, yrange:[F
    const/4 v7, 0x0

    .local v7, count:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 453
    sget v19, Lcom/meizu/widget/MultiWaveView;->CHEVRON_INCREMENTAL_DELAY:I

    mul-int v8, v7, v19

    .line 454
    .local v8, delay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/MultiWaveView;->mFeedbackCount:I

    move/from16 v20, v0

    mul-int v20, v20, v9

    add-int v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 455
    .local v13, icon:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-nez v13, :cond_1

    .line 452
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 438
    .end local v3           #angle:D
    .end local v7           #count:I
    .end local v8           #delay:I
    .end local v9           #direction:I
    .end local v10           #directionCount:I
    .end local v13           #icon:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .end local v15           #sx:F
    .end local v16           #sy:F
    .end local v17           #xrange:[F
    .end local v18           #yrange:[F
    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 458
    .restart local v3       #angle:D
    .restart local v7       #count:I
    .restart local v8       #delay:I
    .restart local v9       #direction:I
    .restart local v10       #directionCount:I
    .restart local v13       #icon:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    .restart local v15       #sx:F
    .restart local v16       #sy:F
    .restart local v17       #xrange:[F
    .restart local v18       #yrange:[F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    move-object/from16 v19, v0

    sget v20, Lcom/meizu/widget/MultiWaveView;->CHEVRON_ANIMATION_DURATION:I

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "ease"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "delay"

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-string v24, "x"

    aput-object v24, v22, v23

    const/16 v23, 0x5

    aput-object v17, v22, v23

    const/16 v23, 0x6

    const-string v24, "y"

    aput-object v24, v22, v23

    const/16 v23, 0x7

    aput-object v18, v22, v23

    const/16 v23, 0x8

    const-string v24, "alpha"

    aput-object v24, v22, v23

    const/16 v23, 0x9

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    aput-object v24, v22, v23

    const/16 v23, 0xa

    const-string v24, "scaleX"

    aput-object v24, v22, v23

    const/16 v23, 0xb

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_1

    aput-object v24, v22, v23

    const/16 v23, 0xc

    const-string v24, "scaleY"

    aput-object v24, v22, v23

    const/16 v23, 0xd

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_2

    aput-object v24, v22, v23

    const/16 v23, 0xe

    const-string v24, "onUpdate"

    aput-object v24, v22, v23

    const/16 v23, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-static {v13, v0, v1, v2}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 444
    .end local v8           #delay:I
    .end local v13           #icon:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 469
    .end local v3           #angle:D
    .end local v7           #count:I
    .end local v15           #sx:F
    .end local v16           #sy:F
    .end local v17           #xrange:[F
    .end local v18           #yrange:[F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 470
    return-void

    .line 458
    :array_0
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
    .end array-data
.end method

.method private switchToState(IFF)V
    .locals 5
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 365
    packed-switch p1, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->deactivateTargets()V

    .line 368
    invoke-direct {p0, v2, v1}, Lcom/meizu/widget/MultiWaveView;->hideTargets(ZZ)V

    .line 369
    invoke-direct {p0, v1, v3}, Lcom/meizu/widget/MultiWaveView;->startBackgroundAnimation(IF)V

    .line 370
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    sget-object v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    goto :goto_0

    .line 374
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v4, v0}, Lcom/meizu/widget/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-direct {p0, v1, v3}, Lcom/meizu/widget/MultiWaveView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 379
    :pswitch_3
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->deactivateTargets()V

    .line 380
    invoke-direct {p0, v2}, Lcom/meizu/widget/MultiWaveView;->showTargets(Z)V

    .line 381
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    sget-object v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setState([I)V

    .line 382
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v4}, Lcom/meizu/widget/MultiWaveView;->startBackgroundAnimation(IF)V

    .line 383
    invoke-direct {p0, v2}, Lcom/meizu/widget/MultiWaveView;->setGrabbedState(I)V

    .line 384
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->announceTargets()V

    goto :goto_0

    .line 396
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->doFinish()V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1107
    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    sub-float v0, p1, v4

    .line 1108
    .local v0, tx:F
    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    sub-float v1, p2, v4

    .line 1109
    .local v1, ty:F
    iget-boolean v4, p0, Lcom/meizu/widget/MultiWaveView;->mAlwaysTrackFinger:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/MultiWaveView;->dist2(FF)F

    move-result v4

    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 1111
    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1, p2}, Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V

    .line 1112
    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->moveHandleTo(FFZ)V

    .line 1113
    iput-boolean v3, p0, Lcom/meizu/widget/MultiWaveView;->mDragging:Z

    move v2, v3

    .line 1116
    :cond_1
    return v2
.end method

.method private updateChevronPositions(FF)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 1213
    .local v0, chevrons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1214
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1216
    .local v3, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-eqz v3, :cond_0

    .line 1217
    invoke-virtual {v3, p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionX(F)V

    .line 1218
    invoke-virtual {v3, p2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionY(F)V

    .line 1214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1221
    .end local v3           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_1
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1198
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1199
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/widget/MultiWaveView$TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1200
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1201
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1202
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1203
    .local v4, targetIcon:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1204
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionX(F)V

    .line 1205
    invoke-virtual {v4, p2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionY(F)V

    .line 1206
    iget v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setX(F)V

    .line 1207
    iget v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setY(F)V

    .line 1201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1209
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/meizu/widget/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 685
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelMove2TargetAnimation()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mMoveAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->cancel()V

    .line 575
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1336
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1337
    .local v0, drawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1357
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1358
    .local v1, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    invoke-virtual {v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1362
    .end local v0           #i:I
    .end local v1           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :goto_1
    return v0

    .line 1356
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    .end local v1           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetResourceId:I

    return v0
.end method

.method invalidateGlobalRegion(Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 482
    invoke-virtual {p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v3

    .line 483
    .local v3, width:I
    invoke-virtual {p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v1

    .line 484
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 485
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 486
    move-object v2, p0

    .line 487
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 488
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 489
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 490
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1236
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1237
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1238
    .local v3, ntargets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1239
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1240
    .local v4, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-eqz v4, :cond_0

    .line 1241
    invoke-virtual {v4, p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    .end local v4           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1245
    .local v2, nchevrons:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1246
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1247
    .local v0, chevron:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    if-eqz v0, :cond_2

    .line 1248
    const/4 v5, 0x1

    invoke-virtual {v0, p1, v5}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->draw(Landroid/graphics/Canvas;Z)V

    .line 1245
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1251
    .end local v0           #chevron:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_3
    iget-object v5, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v5, p1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1252
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1068
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1079
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1080
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1082
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1070
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1073
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1076
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1161
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1162
    sub-int v5, p4, p2

    .line 1163
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1167
    .local v0, height:I
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v6}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1168
    .local v4, placementWidth:F
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v6}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1169
    .local v3, placementHeight:F
    iget v6, p0, Lcom/meizu/widget/MultiWaveView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1171
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/meizu/widget/MultiWaveView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/meizu/widget/MultiWaveView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1174
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/meizu/widget/MultiWaveView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1175
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->hideChevrons()V

    .line 1176
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/meizu/widget/MultiWaveView;->hideTargets(ZZ)V

    .line 1177
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/meizu/widget/MultiWaveView;->moveHandleTo(FFZ)V

    .line 1178
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/widget/MultiWaveView;->mInitialLayout:Z

    .line 1181
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionX(F)V

    .line 1182
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mOuterRing:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionY(F)V

    .line 1184
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionX(F)V

    .line 1185
    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setPositionY(F)V

    .line 1187
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->updateTargetPositions(FF)V

    .line 1188
    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->updateChevronPositions(FF)V

    .line 1190
    iput v1, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    .line 1191
    iput v2, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    .line 1194
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 357
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 358
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/meizu/widget/MultiWaveView;->resolveMeasured(II)I

    move-result v1

    .line 359
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/meizu/widget/MultiWaveView;->resolveMeasured(II)I

    move-result v0

    .line 360
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/meizu/widget/MultiWaveView;->computeInsets(II)V

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/meizu/widget/MultiWaveView;->setMeasuredDimension(II)V

    .line 362
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 862
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 865
    :goto_0
    return v0

    .line 840
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 864
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->invalidate()V

    .line 865
    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 851
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 857
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 858
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->handleCancel(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->startChevronAnimation()V

    .line 802
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    const/4 v6, 0x0

    .line 1399
    if-nez p3, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return v6

    .line 1402
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/meizu/widget/MultiWaveView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1404
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1406
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1407
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1408
    .local v1, iconResId:I
    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1410
    .local v5, res:Landroid/content/res/Resources;
    invoke-direct {p0, v5, p3, v1}, Lcom/meizu/widget/MultiWaveView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 1413
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1414
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "MultiWaveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1416
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1417
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "MultiWaveView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 811
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->stop()V

    .line 812
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->stop()V

    .line 813
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->stop()V

    .line 814
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/meizu/widget/MultiWaveView;->startBackgroundAnimation(IF)V

    .line 815
    invoke-direct {p0}, Lcom/meizu/widget/MultiWaveView;->hideChevrons()V

    .line 816
    invoke-direct {p0, p1, v2}, Lcom/meizu/widget/MultiWaveView;->hideTargets(ZZ)V

    .line 817
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/meizu/widget/MultiWaveView;->deactivateHandle(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 818
    invoke-static {}, Lcom/meizu/widget/MultiWaveView$Tweener;->reset()V

    .line 819
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 315
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 316
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 317
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 318
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 319
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    .line 320
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 767
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 768
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 771
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1342
    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 1343
    .local v1, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    invoke-virtual {v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1344
    invoke-virtual {v1, p2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->setEnabled(Z)V

    .line 1348
    .end local v1           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    return-void

    .line 1341
    .restart local v1       #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/meizu/widget/MultiWaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView;->mOnTriggerListener:Lcom/meizu/widget/MultiWaveView$OnTriggerListener;

    .line 1256
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 746
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 747
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 750
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/meizu/widget/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 730
    iput p1, p0, Lcom/meizu/widget/MultiWaveView;->mNewTargetResources:I

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 788
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/meizu/widget/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    if-nez p1, :cond_0

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public startMove2TargetAnimation(IJZ)Z
    .locals 8
    .parameter "whichTarget"
    .parameter "duration"
    .parameter "ignorSnap"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 523
    iget v3, p0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    if-gez v3, :cond_0

    iget v3, p0, Lcom/meizu/widget/MultiWaveView;->mActiveTarget:I

    if-eq v3, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    .line 530
    .local v0, target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :goto_0
    if-nez v0, :cond_1

    .line 567
    :goto_1
    return v1

    .line 527
    .end local v0           #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    goto :goto_0

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mMoveAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v3}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->cancel()V

    .line 535
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mMoveUpdateListener:Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;

    iput-boolean p4, v3, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;->ignorSnap:Z

    .line 536
    new-instance v3, Lcom/meizu/widget/MultiWaveView$MyPoint;

    iget v4, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F

    iget v5, p0, Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F

    invoke-direct {v3, v4, v5}, Lcom/meizu/widget/MultiWaveView$MyPoint;-><init>(FF)V

    iput-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    .line 537
    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView;->mMoveAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    iget-object v4, p0, Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ease"

    aput-object v6, v5, v1

    sget-object v6, Lcom/meizu/widget/MultiWaveView$Ease$Linear;->easeNone:Landroid/animation/TimeInterpolator;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    const-string v7, "delay"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x4

    const-string v6, "x"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getX()F

    move-result v6

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getPositionX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x6

    const-string v6, "y"

    aput-object v6, v5, v1

    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getY()F

    move-result v6

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getPositionY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v1, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v5, v1

    const/16 v1, 0x9

    iget-object v6, p0, Lcom/meizu/widget/MultiWaveView;->mMoveUpdateListener:Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;

    aput-object v6, v5, v1

    const/16 v1, 0xa

    const-string v6, "onComplete"

    aput-object v6, v5, v1

    const/16 v1, 0xb

    new-instance v6, Lcom/meizu/widget/MultiWaveView$5;

    invoke-direct {v6, p0, v0}, Lcom/meizu/widget/MultiWaveView$5;-><init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V

    aput-object v6, v5, v1

    invoke-static {v4, p2, p3, v5}, Lcom/meizu/widget/MultiWaveView$Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/meizu/widget/MultiWaveView$Tweener;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView;->mMoveAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->start()V

    move v1, v2

    .line 567
    goto/16 :goto_1
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mChevronAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 309
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mTargetAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 310
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView;->mHandleAnimations:Lcom/meizu/widget/MultiWaveView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$AnimationBundle;->setSuspended(Z)V

    .line 311
    return-void
.end method
