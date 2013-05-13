.class Lcom/android/gallery3d/ui/PositionController$FilmRatio;
.super Lcom/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmRatio"
.end annotation


# instance fields
.field public mCurrentRatio:F

.field public mFromRatio:F

.field public mToRatio:F

.field final synthetic this$0:Lcom/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->this$0:Lcom/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PositionController;Lcom/android/gallery3d/ui/PositionController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1810
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;-><init>(Lcom/android/gallery3d/ui/PositionController;)V

    return-void
.end method

.method private doAnimation(FI)Z
    .locals 2
    .parameter "targetRatio"
    .parameter "kind"

    .prologue
    .line 1824
    iput p2, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    .line 1825
    iget v0, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    .line 1826
    iput p1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    .line 1827
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1828
    invoke-static {}, Lcom/android/gallery3d/ui/PositionController;->access$2500()[I

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    .line 1829
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    .line 1830
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v0, 0x1

    .line 1835
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 1836
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    .line 1840
    :cond_0
    :goto_0
    return v0

    .line 1839
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    iget v3, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    .line 1840
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iget v2, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 2

    .prologue
    .line 1817
    iget-object v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->this$0:Lcom/android/gallery3d/ui/PositionController;

    #getter for: Lcom/android/gallery3d/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionController;->access$1100(Lcom/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f80

    .line 1818
    .local v0, target:F
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1819
    :goto_1
    return v1

    .line 1817
    .end local v0           #target:F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1819
    .restart local v0       #target:F
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/PositionController$FilmRatio;->doAnimation(FI)Z

    move-result v1

    goto :goto_1
.end method
