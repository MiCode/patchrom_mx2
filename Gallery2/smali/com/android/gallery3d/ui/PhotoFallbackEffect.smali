.class public Lcom/android/gallery3d/ui/PhotoFallbackEffect;
.super Lcom/android/gallery3d/anim/Animation;
.source "PhotoFallbackEffect.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;,
        Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    }
.end annotation


# static fields
.field private static final ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

.field private mProgress:F

.field private mSource:Landroid/graphics/RectF;

.field private mTarget:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setDuration(I)V

    .line 64
    sget-object v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->ANIM_INTERPOLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 65
    return-void
.end method

.method private drawEntry(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;)V
    .locals 24
    .parameter "canvas"
    .parameter "entry"

    .prologue
    .line 91
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v19

    if-nez v19, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v18

    .line 94
    .local v18, w:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v10

    .line 96
    .local v10, h:I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 97
    .local v12, s:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 101
    .local v8, d:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 103
    .local v11, p:F
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v20

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v9, v19, v20

    .line 105
    .local v9, fullScale:F
    mul-float v19, v9, v11

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    sub-float v21, v21, v11

    mul-float v20, v20, v21

    add-float v13, v19, v20

    .line 107
    .local v13, scale:F
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v11

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f80

    sub-float v21, v21, v11

    mul-float v20, v20, v21

    add-float v6, v19, v20

    .line 108
    .local v6, cx:F
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v11

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f80

    sub-float v21, v21, v11

    mul-float v20, v20, v21

    add-float v7, v19, v20

    .line 110
    .local v7, cy:F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v4, v19, v13

    .line 111
    .local v4, ch:F
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v5, v19, v13

    .line 113
    .local v5, cw:F
    move/from16 v0, v18

    if-le v0, v10, :cond_3

    .line 114
    move/from16 v17, v10

    .line 115
    .local v17, vw:I
    move v15, v4

    .line 118
    .local v15, vcw:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    div-float v19, v19, v20

    const v20, 0x3fcccccd

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 119
    int-to-float v0, v10

    move/from16 v19, v0

    const v20, 0x3fcccccd

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 120
    const v19, 0x3fcccccd

    mul-float v19, v19, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v15, v0

    .line 128
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v15, v20

    sub-float v20, v6, v20

    const/high16 v21, 0x4000

    div-float v21, v4, v21

    sub-float v21, v7, v21

    const/high16 v22, 0x4000

    div-float v22, v15, v22

    add-float v22, v22, v6

    const/high16 v23, 0x4000

    div-float v23, v4, v23

    add-float v23, v23, v7

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    sub-int v20, v18, v17

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int v22, v18, v17

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 132
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 133
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 134
    const/high16 v19, 0x3f80

    sub-float v19, v19, v11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v5, v20

    sub-float v20, v6, v20

    const/high16 v21, 0x4000

    div-float v21, v4, v21

    sub-float v21, v7, v21

    const/high16 v22, 0x4000

    div-float v22, v15, v22

    sub-float v22, v6, v22

    const/high16 v23, 0x4000

    div-float v23, v4, v23

    add-float v23, v23, v7

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sub-int v22, v18, v17

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v15, v20

    add-float v20, v20, v6

    const/high16 v21, 0x4000

    div-float v21, v4, v21

    sub-float v21, v7, v21

    const/high16 v22, 0x4000

    div-float v22, v5, v22

    add-float v22, v22, v6

    const/high16 v23, 0x4000

    div-float v23, v4, v23

    add-float v23, v23, v7

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    add-int v20, v18, v17

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 146
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 122
    :cond_2
    move/from16 v17, v18

    .line 123
    move v15, v5

    goto/16 :goto_1

    .line 149
    .end local v15           #vcw:F
    .end local v17           #vw:I
    :cond_3
    move/from16 v16, v18

    .line 150
    .local v16, vh:I
    move v14, v5

    .line 153
    .local v14, vch:F
    int-to-float v0, v10

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const v20, 0x3fcccccd

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    .line 154
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3fcccccd

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 155
    const v19, 0x3fcccccd

    mul-float v19, v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v14, v0

    .line 163
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v5, v20

    sub-float v20, v6, v20

    const/high16 v21, 0x4000

    div-float v21, v14, v21

    sub-float v21, v7, v21

    const/high16 v22, 0x4000

    div-float v22, v5, v22

    add-float v22, v22, v6

    const/high16 v23, 0x4000

    div-float v23, v14, v23

    add-float v23, v23, v7

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sub-int v21, v10, v16

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v10, v16

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 167
    move/from16 v0, v16

    if-eq v0, v10, :cond_0

    .line 168
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 169
    const/high16 v19, 0x3f80

    sub-float v19, v19, v11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v5, v20

    sub-float v20, v6, v20

    const/high16 v21, 0x4000

    div-float v21, v4, v21

    sub-float v21, v7, v21

    const/high16 v22, 0x4000

    div-float v22, v5, v22

    add-float v22, v22, v6

    const/high16 v23, 0x4000

    div-float v23, v14, v23

    sub-float v23, v7, v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    sub-int v23, v10, v16

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v20, v5, v20

    sub-float v20, v6, v20

    const/high16 v21, 0x4000

    div-float v21, v14, v21

    add-float v21, v21, v7

    const/high16 v22, 0x4000

    div-float v22, v5, v22

    add-float v22, v22, v6

    const/high16 v23, 0x4000

    div-float v23, v4, v23

    add-float v23, v23, v7

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    add-int v21, v10, v16

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mSource:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mTarget:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 181
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 157
    :cond_4
    move/from16 v16, v10

    .line 158
    move v14, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public acceptSlot(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 204
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 205
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    .line 207
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :goto_1
    return v3

    .line 203
    .restart local v0       #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public addEntry(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 2
    .parameter "path"
    .parameter "rect"
    .parameter "texture"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;-><init>(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 6
    .parameter "canvas"

    .prologue
    .line 80
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->calculate(J)Z

    move-result v2

    .line 81
    .local v2, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 82
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 83
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    if-gez v4, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget v5, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->dest:Landroid/graphics/Rect;

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->drawEntry(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;)V

    goto :goto_1

    .line 87
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    :cond_1
    return v2
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mProgress:F

    .line 189
    return-void
.end method

.method public setPositionProvider(Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    .line 193
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    if-eqz v3, :cond_0

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;

    .line 196
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->mPositionProvider:Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/android/gallery3d/data/Path;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;->getItemIndex(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->index:I

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0           #entry:Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_0
    return-void
.end method
