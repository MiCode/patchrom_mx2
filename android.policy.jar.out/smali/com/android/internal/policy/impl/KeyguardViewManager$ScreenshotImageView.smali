.class public Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;
.super Landroid/widget/ImageView;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenshotImageView"
.end annotation


# instance fields
.field private mRealVisible:Z

.field private mTopOffset:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 429
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 430
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 426
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mRealVisible:Z

    .line 427
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    .line 431
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 433
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 434
    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 426
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mRealVisible:Z

    .line 427
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    .line 435
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 437
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 438
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 426
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mRealVisible:Z

    .line 427
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    .line 439
    return-void
.end method


# virtual methods
.method public isRealVisible()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mRealVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 447
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    if-lez v0, :cond_0

    .line 448
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 449
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 450
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 454
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mRealVisible:Z

    .line 455
    return-void

    .line 452
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setTopOffset(I)V
    .locals 0
    .parameter "topOffset"

    .prologue
    .line 442
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mTopOffset:I

    .line 443
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->mRealVisible:Z

    .line 461
    return-void
.end method
