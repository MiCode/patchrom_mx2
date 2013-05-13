.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field protected mActionModeHeaderHidden:Z

.field protected mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

.field protected mBackIcon:Landroid/graphics/drawable/Drawable;

.field protected mBackImeIcon:Landroid/graphics/drawable/Drawable;

.field protected mContentHeight:I

.field private mCustomHeight:I

.field protected mInActionMode:Z

.field protected mIsOverlay:Z

.field protected mMaxTitleWidth:I

.field protected mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

.field protected mNeedDockActionBar:Z

.field protected mOrientatinPortrait:Z

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 50
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 376
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 401
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 452
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 458
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 50
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 376
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 401
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 452
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 458
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 50
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 376
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 388
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 401
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 452
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 458
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/AbsActionBarView;)Landroid/app/ActionBar$VisibilityAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    return-object v0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 11
    .parameter "visibility"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const-wide/16 v7, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 152
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 155
    :cond_0
    if-nez p1, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    .line 158
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v9}, Lcom/android/internal/view/menu/ActionMenuView;->setAlpha(F)V

    .line 163
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 166
    .local v2, splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 211
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_0
    return-void

    .line 171
    :cond_3
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 172
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_4

    .line 175
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 176
    .local v1, set:Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 177
    .restart local v2       #splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 180
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 182
    .end local v1           #set:Landroid/animation/AnimatorSet;
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 187
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_6

    .line 188
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 190
    .restart local v2       #splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 195
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_6
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v9, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_7

    .line 199
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 200
    .restart local v1       #set:Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 201
    .restart local v2       #splitAnim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 202
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 204
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 206
    .end local v1           #set:Landroid/animation/AnimatorSet;
    .end local v2           #splitAnim:Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 263
    :cond_0
    return-void
.end method

.method public getActionMenuView()Lcom/android/internal/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .parameter "child"
    .parameter "availableWidth"
    .parameter "childSpecHeight"
    .parameter "spacing"

    .prologue
    .line 267
    const/high16 v0, -0x8000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 271
    sub-int/2addr p2, p4

    .line 273
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public needDockActionBar()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v1, :cond_2

    .line 73
    .local v1, portrait:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eq v4, v1, :cond_0

    .line 74
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 78
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v7, 0x10102ce

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, a:Landroid/content/res/TypedArray;
    iget v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    if-lez v4, :cond_3

    .line 85
    iget v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 89
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v3, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 100
    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v3, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->updateBackButton()V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    .local v2, res:Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v3, :cond_5

    const v3, 0x1050140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_3
    iput v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 110
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #portrait:Z
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    move v1, v3

    .line 72
    goto :goto_0

    .line 87
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #portrait:Z
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    goto :goto_1

    .line 98
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    goto :goto_2

    .line 107
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_5
    const v3, 0x1050141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 415
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->updateBackButton()V

    .line 417
    return-void

    .line 415
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected positionChild(Landroid/view/View;III)I
    .locals 5
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "contentHeight"

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 278
    .local v2, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 279
    .local v0, childHeight:I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 281
    .local v1, childTop:I
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 283
    return v2
.end method

.method protected positionChildInverse(Landroid/view/View;III)I
    .locals 5
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "contentHeight"

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 288
    .local v2, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 289
    .local v0, childHeight:I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 291
    .local v1, childTop:I
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 293
    return v2
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    .line 363
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "backIcon"
    .parameter "backImeIcon"

    .prologue
    .line 466
    if-eqz p1, :cond_1

    .line 467
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 468
    iput-object p2, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackImeIcon:Landroid/graphics/drawable/Drawable;

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 478
    :cond_1
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    .line 131
    return-void
.end method

.method public setEnableDockActionBar(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mNeedDockActionBar:Z

    .line 404
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 454
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 456
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .parameter "inActionMode"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 383
    return-void
.end method

.method public setOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 392
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0
    .parameter "split"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 118
    return-void
.end method

.method public setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0
    .parameter "splitView"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 139
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .parameter "splitWhenNarrow"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 126
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    :cond_1
    return-void
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    .line 371
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 421
    sget-object v1, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    if-nez v1, :cond_4

    .line 432
    new-instance v1, Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    .line 433
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackImeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/KeyBackButton;->setMinimumWidth(I)V

    .line 436
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/android/internal/view/menu/KeyBackButton;->setPadding(IIII)V

    .line 444
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->addView(Landroid/view/View;)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/android/internal/view/menu/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/KeyBackButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 441
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
