.class public Lcom/android/gallery3d/photoeditor/actions/Doodle;
.super Ljava/lang/Object;
.source "Doodle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final color:I

.field private doodleContext:Landroid/content/Context;

.field private final doodleMode:I

.field private isEraserDoodle:Z

.field private final normalizedPath:Landroid/graphics/Path;

.field private final paintScaleSize:F

.field private final paintSize:F

.field private final points:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final shapeselectedId:I

.field private textString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle$1;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIFLandroid/graphics/PointF;F)V
    .locals 3
    .parameter "color"
    .parameter "doodleMode"
    .parameter "paintSize"
    .parameter "startPoint"
    .parameter "scaleSize"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->isEraserDoodle:Z

    .line 73
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    .line 74
    iput p3, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintSize:F

    .line 75
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->doodleMode:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->shapeselectedId:I

    .line 77
    iput p5, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintScaleSize:F

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    iget v1, p4, Landroid/graphics/PointF;->x:F

    iget v2, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public constructor <init>(IIIFLandroid/graphics/PointF;F)V
    .locals 3
    .parameter "color"
    .parameter "doodleMode"
    .parameter "shapeSelectId"
    .parameter "paintSize"
    .parameter "startPoint"
    .parameter "scaleSize"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->isEraserDoodle:Z

    .line 83
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    .line 84
    iput p4, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintSize:F

    .line 85
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->doodleMode:I

    .line 86
    iput p3, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->shapeselectedId:I

    .line 87
    iput p6, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintScaleSize:F

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    iget v1, p5, Landroid/graphics/PointF;->x:F

    iget v2, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v0, p5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public static createEraserPaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 68
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 69
    return-object v0
.end method

.method public static createPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 59
    .local v0, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 61
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    return-object v0
.end method


# virtual methods
.method public addControlPoint(Landroid/graphics/PointF;)Z
    .locals 11
    .parameter "point"

    .prologue
    const/high16 v10, 0x4000

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 106
    .local v0, last:Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v10

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 110
    .local v1, r:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 111
    invoke-virtual {v1, v8, v8, v9, v9}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v2

    return v2
.end method

.method public changeDoodleFirstPoint(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    return v0
.end method

.method public getDoodleContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->doodleContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDoodleMode()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->doodleMode:I

    return v0
.end method

.method public getDownPonit()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1
    .parameter "matrix"
    .parameter "path"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 142
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 143
    return-void
.end method

.method public getLastPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPaintScaleSize()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintScaleSize:F

    return v0
.end method

.method public getPaintSize()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintSize:F

    return v0
.end method

.method public getSelectedShapeId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->shapeselectedId:I

    return v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->textString:Ljava/lang/String;

    return-object v0
.end method

.method public inBounds()Z
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 97
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 98
    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setDoodleContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->doodleContext:Landroid/content/Context;

    .line 189
    return-void
.end method

.method public setTextString(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->textString:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 152
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->doodleMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintSize:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 156
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->paintScaleSize:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 158
    .local v1, point:Landroid/graphics/PointF;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 160
    .end local v1           #point:Landroid/graphics/PointF;
    :cond_0
    return-void
.end method
