.class Lcom/meizu/widget/MultiWaveView$MyPoint;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPoint"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1939
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1940
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 1941
    iput p2, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 1942
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 1953
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1957
    iget v0, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1945
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->x:F

    .line 1946
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1949
    iput p1, p0, Lcom/meizu/widget/MultiWaveView$MyPoint;->y:F

    .line 1950
    return-void
.end method
