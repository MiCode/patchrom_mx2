.class public Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "DoodleFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private doodleTextString:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final doodles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field

.field private final textDoodles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 2
    .parameter "doodle"

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDoodleString(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "textString"

    .prologue
    .line 62
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 24
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 95
    .local v12, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v19, matrix:Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/high16 v22, 0x3f80

    move/from16 v0, v22

    invoke-direct {v8, v9, v10, v11, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v10, v11, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 103
    .local v15, drawingPath:Landroid/graphics/Path;
    const/16 v20, 0x0

    .line 104
    .local v20, paint:Landroid/graphics/Paint;
    const/16 v17, 0x0

    .line 106
    .local v17, erasePaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 107
    .local v13, doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v14

    .line 108
    .local v14, doodleMode:I
    const/4 v8, 0x2

    if-ne v14, v8, :cond_1

    .line 109
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v20

    .line 110
    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getPaintSize()F

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    if-nez v2, :cond_0

    .line 112
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    .end local v2           #shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;
    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, v20

    invoke-direct {v2, v8, v9, v10, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;-><init>(Landroid/content/Context;FFLandroid/graphics/Paint;)V

    .line 114
    .restart local v2       #shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;
    :cond_0
    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v4

    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v5

    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPonit()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getPaintScaleSize()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;F)V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v8, 0x1

    if-ne v14, v8, :cond_4

    .line 117
    if-nez v17, :cond_2

    .line 118
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createEraserPaint()Landroid/graphics/Paint;

    move-result-object v17

    .line 120
    :cond_2
    move-object/from16 v20, v17

    .line 121
    const/high16 v8, -0x100

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    :cond_3
    :goto_1
    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getPaintSize()F

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v15}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 128
    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 122
    :cond_4
    if-nez v14, :cond_3

    .line 123
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v20

    .line 124
    invoke-virtual {v13}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 131
    .end local v13           #doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .end local v14           #doodleMode:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 132
    .local v21, textdoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 133
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 134
    .local v6, textPaint:Landroid/text/TextPaint;
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 135
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getPaintSize()F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 136
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPonit()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v7, v8

    .line 138
    .local v7, changeLine:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 139
    .local v5, str:Ljava/lang/String;
    :goto_3
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 140
    .local v4, layout:Landroid/text/StaticLayout;
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPonit()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPonit()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 143
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->setTextString(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 146
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 138
    .end local v4           #layout:Landroid/text/StaticLayout;
    .end local v5           #str:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getTextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 149
    .end local v6           #textPaint:Landroid/text/TextPaint;
    .end local v7           #changeLine:I
    .end local v21           #textdoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    :cond_8
    const-string v8, "android.media.effect.effects.BitmapOverlayEffect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v16

    .line 150
    .local v16, effect:Landroid/media/effect/Effect;
    const-string v8, "bitmap"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v12}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 152
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    const-class v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 84
    return-void
.end method

.method public removeDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 1
    .parameter "doodle"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public removeDoodleTextString(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodleTextString:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method

.method public removeTextDoodle(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->textDoodles:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->doodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 158
    .local v0, doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 160
    .end local v0           #doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    :cond_0
    return-void
.end method
