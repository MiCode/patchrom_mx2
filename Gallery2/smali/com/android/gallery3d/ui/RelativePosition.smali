.class public Lcom/android/gallery3d/ui/RelativePosition;
.super Ljava/lang/Object;
.source "RelativePosition.java"


# instance fields
.field private mAbsoluteX:F

.field private mAbsoluteY:F

.field private mReferenceX:F

.field private mReferenceY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mAbsoluteX:F

    iget v1, p0, Lcom/android/gallery3d/ui/RelativePosition;->mReferenceX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mAbsoluteY:F

    iget v1, p0, Lcom/android/gallery3d/ui/RelativePosition;->mReferenceY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public setAbsolutePosition(II)V
    .locals 1
    .parameter "absoluteX"
    .parameter "absoluteY"

    .prologue
    .line 26
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mAbsoluteX:F

    .line 27
    int-to-float v0, p2

    iput v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mAbsoluteY:F

    .line 28
    return-void
.end method

.method public setReferencePosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 31
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mReferenceX:F

    .line 32
    int-to-float v0, p2

    iput v0, p0, Lcom/android/gallery3d/ui/RelativePosition;->mReferenceY:F

    .line 33
    return-void
.end method
