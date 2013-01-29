.class abstract Lcom/android/gallery3d/ui/PositionController$Animatable;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Animatable"
.end annotation


# instance fields
.field public mAnimationDuration:I

.field public mAnimationKind:I

.field public mAnimationStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1376
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PositionController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PositionController$Animatable;-><init>()V

    return-void
.end method

.method private static applyInterpolationCurve(IF)F
    .locals 3
    .parameter "kind"
    .parameter "progress"

    .prologue
    const/high16 v2, 0x3f80

    .line 1422
    sub-float v0, v2, p1

    .line 1423
    .local v0, f:F
    packed-switch p0, :pswitch_data_0

    .line 1443
    :goto_0
    return p1

    .line 1429
    :pswitch_0
    sub-float p1, v2, v0

    .line 1430
    goto :goto_0

    .line 1433
    :pswitch_1
    mul-float v1, v0, v0

    sub-float p1, v2, v1

    .line 1434
    goto :goto_0

    .line 1436
    :pswitch_2
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    sub-float p1, v2, v1

    .line 1437
    goto :goto_0

    .line 1440
    :pswitch_3
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    sub-float p1, v2, v1

    goto :goto_0

    .line 1423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const-wide/16 v6, -0x2

    .line 1389
    iget-wide v4, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 1390
    const/4 v4, 0x0

    .line 1418
    :goto_0
    return v4

    .line 1392
    :cond_0
    iget-wide v4, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1393
    iput-wide v8, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1394
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PositionController$Animatable;->startSnapback()Z

    move-result v4

    goto :goto_0

    .line 1398
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    if-nez v4, :cond_3

    .line 1399
    const/high16 v3, 0x3f80

    .line 1406
    .local v3, progress:F
    :goto_1
    const/high16 v4, 0x3f80

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_4

    .line 1407
    const/high16 v3, 0x3f80

    .line 1412
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/PositionController$Animatable;->interpolate(F)Z

    move-result v0

    .line 1414
    .local v0, done:Z
    if-eqz v0, :cond_2

    .line 1415
    iput-wide v6, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    .line 1418
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1401
    .end local v0           #done:Z
    .end local v3           #progress:F
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    .line 1402
    .local v1, now:J
    iget-wide v4, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationDuration:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .restart local v3       #progress:F
    goto :goto_1

    .line 1409
    .end local v1           #now:J
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/PositionController$Animatable;->mAnimationKind:I

    invoke-static {v4, v3}, Lcom/android/gallery3d/ui/PositionController$Animatable;->applyInterpolationCurve(IF)F

    move-result v3

    goto :goto_2
.end method

.method protected abstract interpolate(F)Z
.end method

.method public abstract startSnapback()Z
.end method
