.class public Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;
.super Ljava/lang/Object;
.source "DoodleColorMap.java"


# instance fields
.field private hsv:[D

.field private mHeight:I

.field private mVOffset:[D

.field private mWidth:I

.field private rgb:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    .line 14
    const/16 v0, 0x65

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mVOffset:[D

    .line 15
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    .line 16
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mWidth:I

    .line 17
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mHeight:I

    return-void
.end method

.method private hsv2rgb([D[I)V
    .locals 17
    .parameter "hsv"
    .parameter "rgb"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 208
    const/4 v9, 0x0

    aget-wide v9, p1, v9

    const-wide/high16 v11, -0x4010

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    const/4 v9, 0x1

    aget-wide v9, p1, v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_1

    .line 209
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    .line 210
    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, p2, v10

    aput v10, p2, v9

    .line 211
    const/4 v9, 0x2

    const/4 v10, 0x0

    aget v10, p2, v10

    aput v10, p2, v9

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v9, 0x0

    aget-wide v9, p1, v9

    const-wide/high16 v11, 0x404e

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    rem-int/lit8 v2, v9, 0x6

    .line 215
    .local v2, hi:I
    const/4 v9, 0x0

    aget-wide v9, p1, v9

    const-wide/high16 v11, 0x404e

    div-double/2addr v9, v11

    int-to-double v11, v2

    sub-double v0, v9, v11

    .line 216
    .local v0, f:D
    const/4 v9, 0x2

    aget-wide v9, p1, v9

    const-wide/high16 v11, 0x3ff0

    const/4 v13, 0x1

    aget-wide v13, p1, v13

    sub-double/2addr v11, v13

    mul-double v3, v9, v11

    .line 217
    .local v3, p:D
    const/4 v9, 0x2

    aget-wide v9, p1, v9

    const-wide/high16 v11, 0x3ff0

    const/4 v13, 0x1

    aget-wide v13, p1, v13

    mul-double/2addr v13, v0

    sub-double/2addr v11, v13

    mul-double v5, v9, v11

    .line 218
    .local v5, q:D
    const/4 v9, 0x2

    aget-wide v9, p1, v9

    const-wide/high16 v11, 0x3ff0

    const-wide/high16 v13, 0x3ff0

    sub-double/2addr v13, v0

    const/4 v15, 0x1

    aget-wide v15, p1, v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double v7, v9, v11

    .line 219
    .local v7, t:D
    if-nez v2, :cond_2

    .line 220
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    .line 221
    const/4 v9, 0x1

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v7

    double-to-int v10, v10

    aput v10, p2, v9

    .line 222
    const/4 v9, 0x2

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v3

    double-to-int v10, v10

    aput v10, p2, v9

    goto :goto_0

    .line 223
    :cond_2
    const/4 v9, 0x1

    if-ne v2, v9, :cond_3

    .line 224
    const/4 v9, 0x0

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v5

    double-to-int v10, v10

    aput v10, p2, v9

    .line 225
    const/4 v9, 0x1

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    .line 226
    const/4 v9, 0x2

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v3

    double-to-int v10, v10

    aput v10, p2, v9

    goto/16 :goto_0

    .line 227
    :cond_3
    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    .line 228
    const/4 v9, 0x0

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v3

    double-to-int v10, v10

    aput v10, p2, v9

    .line 229
    const/4 v9, 0x1

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    .line 230
    const/4 v9, 0x2

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v7

    double-to-int v10, v10

    aput v10, p2, v9

    goto/16 :goto_0

    .line 231
    :cond_4
    const/4 v9, 0x3

    if-ne v2, v9, :cond_5

    .line 232
    const/4 v9, 0x0

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v3

    double-to-int v10, v10

    aput v10, p2, v9

    .line 233
    const/4 v9, 0x1

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v5

    double-to-int v10, v10

    aput v10, p2, v9

    .line 234
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    goto/16 :goto_0

    .line 235
    :cond_5
    const/4 v9, 0x4

    if-ne v2, v9, :cond_6

    .line 236
    const/4 v9, 0x0

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v7

    double-to-int v10, v10

    aput v10, p2, v9

    .line 237
    const/4 v9, 0x1

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v3

    double-to-int v10, v10

    aput v10, p2, v9

    .line 238
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    goto/16 :goto_0

    .line 239
    :cond_6
    const/4 v9, 0x5

    if-ne v2, v9, :cond_0

    .line 240
    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-wide v10, p1, v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    double-to-int v10, v10

    aput v10, p2, v9

    .line 241
    const/4 v9, 0x1

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v3

    double-to-int v10, v10

    aput v10, p2, v9

    .line 242
    const/4 v9, 0x2

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v10, v5

    double-to-int v10, v10

    aput v10, p2, v9

    goto/16 :goto_0
.end method

.method private rgb2hsv([I[D)V
    .locals 17
    .parameter "rgb"
    .parameter "hsv"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 180
    const/4 v12, 0x0

    aget v12, p1, v12

    int-to-double v12, v12

    const-wide v14, 0x406fe00000000000L

    div-double v10, v12, v14

    .line 181
    .local v10, rr:D
    const/4 v12, 0x1

    aget v12, p1, v12

    int-to-double v12, v12

    const-wide v14, 0x406fe00000000000L

    div-double v4, v12, v14

    .line 182
    .local v4, gg:D
    const/4 v12, 0x2

    aget v12, p1, v12

    int-to-double v12, v12

    const-wide v14, 0x406fe00000000000L

    div-double v0, v12, v14

    .line 183
    .local v0, bb:D
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 184
    .local v6, max:D
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 185
    .local v8, min:D
    sub-double v2, v6, v8

    .line 186
    .local v2, diff:D
    const/4 v12, 0x2

    aput-wide v6, p2, v12

    .line 187
    const-wide/16 v12, 0x0

    cmpl-double v12, v6, v12

    if-nez v12, :cond_1

    .line 188
    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    aput-wide v13, p2, v12

    .line 192
    :goto_0
    cmpl-double v12, v6, v8

    if-nez v12, :cond_2

    .line 193
    const/4 v12, 0x0

    const-wide/high16 v13, -0x4010

    aput-wide v13, p2, v12

    .line 204
    .end local v0           #bb:D
    .end local v2           #diff:D
    .end local v4           #gg:D
    .end local v6           #max:D
    .end local v8           #min:D
    .end local v10           #rr:D
    :cond_0
    :goto_1
    return-void

    .line 190
    .restart local v0       #bb:D
    .restart local v2       #diff:D
    .restart local v4       #gg:D
    .restart local v6       #max:D
    .restart local v8       #min:D
    .restart local v10       #rr:D
    :cond_1
    const/4 v12, 0x1

    div-double v13, v2, v6

    aput-wide v13, p2, v12

    goto :goto_0

    .line 194
    :cond_2
    cmpl-double v12, v6, v10

    if-nez v12, :cond_3

    cmpl-double v12, v4, v0

    if-ltz v12, :cond_3

    .line 195
    const/4 v12, 0x0

    const-wide/high16 v13, 0x404e

    sub-double v15, v4, v0

    mul-double/2addr v13, v15

    div-double/2addr v13, v2

    aput-wide v13, p2, v12

    goto :goto_1

    .line 196
    :cond_3
    cmpl-double v12, v6, v10

    if-nez v12, :cond_4

    cmpg-double v12, v4, v0

    if-gez v12, :cond_4

    .line 197
    const/4 v12, 0x0

    const-wide/high16 v13, 0x404e

    sub-double v15, v4, v0

    mul-double/2addr v13, v15

    div-double/2addr v13, v2

    const-wide v15, 0x4076800000000000L

    add-double/2addr v13, v15

    aput-wide v13, p2, v12

    goto :goto_1

    .line 198
    :cond_4
    cmpl-double v12, v6, v4

    if-nez v12, :cond_5

    .line 199
    const/4 v12, 0x0

    const-wide/high16 v13, 0x404e

    sub-double v15, v0, v10

    mul-double/2addr v13, v15

    div-double/2addr v13, v2

    const-wide/high16 v15, 0x405e

    add-double/2addr v13, v15

    aput-wide v13, p2, v12

    goto :goto_1

    .line 200
    :cond_5
    cmpl-double v12, v6, v0

    if-nez v12, :cond_0

    .line 201
    const/4 v12, 0x0

    const-wide/high16 v13, 0x404e

    sub-double v15, v10, v4

    mul-double/2addr v13, v15

    div-double/2addr v13, v2

    const-wide/high16 v15, 0x406e

    add-double/2addr v13, v15

    aput-wide v13, p2, v12

    goto :goto_1
.end method


# virtual methods
.method public createColorMap(II)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "width"
    .parameter "height"

    .prologue
    .line 20
    const/16 v20, 0x0

    .local v20, r1:I
    const/16 v21, 0x0

    .local v21, r2:I
    const/4 v14, 0x0

    .local v14, g1:I
    const/4 v15, 0x0

    .local v15, g2:I
    const/4 v10, 0x0

    .local v10, b1:I
    const/4 v11, 0x0

    .line 21
    .local v11, b2:I
    const-wide/16 v22, 0x0

    .local v22, rDis:D
    const-wide/16 v16, 0x0

    .local v16, gDis:D
    const-wide/16 v12, 0x0

    .line 22
    .local v12, bDis:D
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mWidth:I

    .line 23
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mHeight:I

    .line 24
    const/16 v4, 0x190

    const/16 v5, 0x65

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    .local v2, map:Landroid/graphics/Bitmap;
    const v4, 0x9dd0

    new-array v3, v4, [I

    .line 27
    .local v3, pixels:[I
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    if-eqz v4, :cond_3

    .line 28
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    const/16 v4, 0x64

    move/from16 v0, v18

    if-gt v0, v4, :cond_3

    .line 29
    const/16 v4, 0x32

    move/from16 v0, v18

    if-gt v0, v4, :cond_0

    .line 30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x1

    move/from16 v0, v18

    int-to-double v6, v0

    const-wide/high16 v8, 0x4049

    div-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3ff0

    aput-wide v6, v4, v5

    .line 36
    :goto_1
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    const/16 v4, 0x168

    move/from16 v0, v19

    if-ge v0, v4, :cond_1

    .line 37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x0

    move/from16 v0, v19

    rem-int/lit16 v6, v0, 0x168

    int-to-double v6, v6

    aput-wide v6, v4, v5

    .line 38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv2rgb([D[I)V

    .line 39
    move/from16 v0, v18

    mul-int/lit16 v4, v0, 0x190

    add-int v4, v4, v19

    const/high16 v5, -0x100

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 36
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 33
    .end local v19           #j:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0

    aput-wide v6, v4, v5

    .line 34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x2

    rsub-int/lit8 v6, v18, 0x64

    int-to-double v6, v6

    const-wide/high16 v8, 0x4049

    div-double/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 41
    .restart local v19       #j:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x0

    aget v20, v4, v5

    .line 42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x1

    aget v14, v4, v5

    .line 43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x2

    aget v10, v4, v5

    .line 45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x0

    const-wide/high16 v6, -0x4010

    aput-wide v6, v4, v5

    .line 46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v5, 0x2

    rsub-int/lit8 v6, v18, 0x64

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059

    div-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv2rgb([D[I)V

    .line 50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x0

    aget v21, v4, v5

    .line 51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x1

    aget v15, v4, v5

    .line 52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x2

    aget v11, v4, v5

    .line 54
    sub-int v4, v21, v20

    int-to-double v4, v4

    const-wide/high16 v6, 0x4044

    div-double v22, v4, v6

    .line 55
    sub-int v4, v15, v14

    int-to-double v4, v4

    const-wide/high16 v6, 0x4044

    div-double v16, v4, v6

    .line 56
    sub-int v4, v11, v10

    int-to-double v4, v4

    const-wide/high16 v6, 0x4044

    div-double v12, v4, v6

    .line 58
    const/16 v19, 0x168

    :goto_3
    const/16 v4, 0x190

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x0

    move/from16 v0, v20

    int-to-double v6, v0

    move/from16 v0, v19

    add-int/lit16 v8, v0, -0x168

    int-to-double v8, v8

    mul-double v8, v8, v22

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x1

    int-to-double v6, v14

    move/from16 v0, v19

    add-int/lit16 v8, v0, -0x168

    int-to-double v8, v8

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v5, 0x2

    int-to-double v6, v10

    move/from16 v0, v19

    add-int/lit16 v8, v0, -0x168

    int-to-double v8, v8

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    .line 62
    move/from16 v0, v18

    mul-int/lit16 v4, v0, 0x190

    add-int v4, v4, v19

    const/high16 v5, -0x100

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 58
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 64
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb2hsv([I[D)V

    .line 65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mVOffset:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v6, 0x2

    aget-wide v5, v5, v6

    aput-wide v5, v4, v18

    .line 28
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 68
    .end local v18           #i:I
    .end local v19           #j:I
    :cond_3
    const/4 v4, 0x0

    const/16 v5, 0x190

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x190

    const/16 v9, 0x64

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 69
    return-object v2
.end method

.method public getColor(II)I
    .locals 24
    .parameter "x"
    .parameter "y"

    .prologue
    .line 73
    const/4 v7, 0x0

    .line 74
    .local v7, color:I
    const/4 v12, 0x0

    .local v12, px:I
    const/4 v13, 0x0

    .line 75
    .local v13, py:I
    const/4 v14, 0x0

    .local v14, r1:I
    const/4 v8, 0x0

    .local v8, g1:I
    const/4 v3, 0x0

    .local v3, b1:I
    const/4 v15, 0x0

    .local v15, r2:I
    const/4 v9, 0x0

    .local v9, g2:I
    const/4 v4, 0x0

    .line 76
    .local v4, b2:I
    const-wide/16 v16, 0x0

    .local v16, rDis:D
    const-wide/16 v10, 0x0

    .local v10, gDis:D
    const-wide/16 v5, 0x0

    .line 77
    .local v5, bDis:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    and-int v18, v18, v19

    if-eqz v18, :cond_0

    .line 78
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x190

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mWidth:I

    move/from16 v19, v0

    div-int v12, v18, v19

    .line 79
    mul-int/lit8 v18, p2, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mHeight:I

    move/from16 v19, v0

    div-int v13, v18, v19

    .line 80
    const/16 v18, 0x168

    move/from16 v0, v18

    if-ge v12, v0, :cond_4

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    rem-int/lit16 v0, v12, 0x168

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    aput-wide v20, v18, v19

    .line 82
    const/16 v18, 0x32

    move/from16 v0, v18

    if-gt v13, v0, :cond_3

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    int-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4049

    div-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const-wide/high16 v20, 0x3ff0

    aput-wide v20, v18, v19

    .line 89
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv2rgb([D[I)V

    .line 122
    :goto_3
    const/high16 v18, -0x100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    or-int v7, v18, v19

    .line 124
    :cond_0
    return v7

    .line 77
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 86
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/high16 v20, 0x3ff0

    aput-wide v20, v18, v19

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    rsub-int/lit8 v20, v13, 0x64

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4049

    div-double v20, v20, v22

    aput-wide v20, v18, v19

    goto :goto_2

    .line 91
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/high16 v20, -0x4010

    aput-wide v20, v18, v19

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    aput-wide v20, v18, v19

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    rsub-int/lit8 v20, v13, 0x64

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059

    div-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv2rgb([D[I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v15, v18, v19

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v9, v18, v19

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v4, v18, v19

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    aput-wide v20, v18, v19

    .line 100
    const/16 v18, 0x32

    move/from16 v0, v18

    if-gt v13, v0, :cond_5

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    int-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4049

    div-double v20, v20, v22

    aput-wide v20, v18, v19

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const-wide/high16 v20, 0x3ff0

    aput-wide v20, v18, v19

    .line 107
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv2rgb([D[I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v14, v18, v19

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v8, v18, v19

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v3, v18, v19

    .line 113
    sub-int v18, v15, v14

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4044

    div-double v16, v18, v20

    .line 114
    sub-int v18, v9, v8

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4044

    div-double v10, v18, v20

    .line 115
    sub-int v18, v4, v3

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4044

    div-double v5, v18, v20

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-double v0, v14

    move-wide/from16 v20, v0

    add-int/lit16 v0, v12, -0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    int-to-double v0, v8

    move-wide/from16 v20, v0

    add-int/lit16 v0, v12, -0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v10

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    int-to-double v0, v3

    move-wide/from16 v20, v0

    add-int/lit16 v0, v12, -0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    goto/16 :goto_3

    .line 104
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/high16 v20, 0x3ff0

    aput-wide v20, v18, v19

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    rsub-int/lit8 v20, v13, 0x64

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4049

    div-double v20, v20, v22

    aput-wide v20, v18, v19

    goto/16 :goto_4
.end method

.method public getPoint(I)Landroid/graphics/Point;
    .locals 14
    .parameter "rgba"

    .prologue
    .line 128
    const/4 v6, 0x0

    .line 129
    .local v6, x:I
    const/4 v7, 0x0

    .line 130
    .local v7, y:I
    const-wide/16 v1, 0x0

    .line 131
    .local v1, min:D
    const-wide/16 v4, 0x0

    .line 132
    .local v4, temp:D
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 133
    .local v3, point:Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    if-eqz v8, :cond_2

    .line 134
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v9, 0x0

    shr-int/lit8 v10, p1, 0x10

    and-int/lit16 v10, v10, 0xff

    aput v10, v8, v9

    .line 135
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    and-int/lit16 v10, v10, 0xff

    aput v10, v8, v9

    .line 136
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    const/4 v9, 0x2

    and-int/lit16 v10, p1, 0xff

    aput v10, v8, v9

    .line 137
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb:[I

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    invoke-direct {p0, v8, v9}, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->rgb2hsv([I[D)V

    .line 139
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x3ff0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x3ff0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_4

    .line 140
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    double-to-int v6, v8

    .line 141
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x3ff0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_3

    .line 142
    const-wide/high16 v8, 0x4059

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    const-wide/high16 v12, 0x4049

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v7, v8

    .line 172
    :cond_1
    :goto_0
    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mWidth:I

    mul-int/2addr v8, v6

    div-int/lit16 v8, v8, 0x190

    iput v8, v3, Landroid/graphics/Point;->x:I

    .line 173
    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mHeight:I

    mul-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x64

    iput v8, v3, Landroid/graphics/Point;->y:I

    .line 175
    :cond_2
    return-object v3

    .line 144
    :cond_3
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x4000

    mul-double/2addr v8, v10

    double-to-int v7, v8

    goto :goto_0

    .line 146
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 147
    const/16 v6, 0x18f

    .line 148
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mVOffset:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    const/16 v8, 0x64

    if-gt v0, v8, :cond_1

    .line 151
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->mVOffset:[D

    aget-wide v10, v10, v0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 152
    cmpl-double v8, v1, v4

    if-lez v8, :cond_5

    .line 153
    move-wide v1, v4

    .line 154
    move v7, v0

    .line 150
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v0           #i:I
    :cond_6
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    const-wide/high16 v10, -0x4010

    cmpl-double v8, v8, v10

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x3fe0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_9

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x3fe0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_9

    .line 159
    :cond_8
    const/16 v6, 0x18f

    .line 160
    const-wide/high16 v8, 0x4059

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v7, v8

    goto/16 :goto_0

    .line 162
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    double-to-int v6, v8

    .line 163
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    cmpg-double v8, v8, v10

    if-gez v8, :cond_a

    .line 164
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/high16 v10, 0x4049

    mul-double/2addr v8, v10

    double-to-int v7, v8

    goto/16 :goto_0

    .line 165
    :cond_a
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    cmpl-double v8, v8, v10

    if-lez v8, :cond_b

    .line 166
    const-wide/high16 v8, 0x4059

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleColorMap;->hsv:[D

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    const-wide/high16 v12, 0x4049

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v7, v8

    goto/16 :goto_0

    .line 168
    :cond_b
    const/16 v7, 0x32

    goto/16 :goto_0
.end method
