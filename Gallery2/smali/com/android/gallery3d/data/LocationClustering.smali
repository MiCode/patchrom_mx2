.class Lcom/android/gallery3d/data/LocationClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocationClustering$SmallItem;,
        Lcom/android/gallery3d/data/LocationClustering$Point;
    }
.end annotation


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/LocationClustering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter "geocoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;",
            "Lcom/android/gallery3d/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v7}, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    .line 152
    .local v7, set:Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 153
    .local v6, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 154
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 155
    .local v1, item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    iget-wide v2, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    .line 156
    .local v2, itemLatitude:D
    iget-wide v4, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    .line 158
    .local v4, itemLongitude:D
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    .line 159
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 160
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 162
    :cond_0
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 163
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 164
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 166
    :cond_1
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    .line 167
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 168
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 170
    :cond_2
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    .line 171
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 172
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 153
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v1           #item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v2           #itemLatitude:D
    .end local v4           #itemLongitude:D
    :cond_4
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/util/ReverseGeocoder;->computeAddress(Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I
    .locals 34
    .parameter "points"
    .parameter "bestK"

    .prologue
    .line 203
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    .line 206
    .local v27, n:I
    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 207
    .local v26, minK:I
    const/16 v2, 0x14

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 209
    .local v25, maxK:I
    move/from16 v0, v25

    new-array v14, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 210
    .local v14, center:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v18, v0

    .line 211
    .local v18, groupSum:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 212
    .local v17, groupCount:[I
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 214
    .local v19, grouping:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 215
    new-instance v2, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v14, v20

    .line 216
    new-instance v2, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v18, v20

    .line 214
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const v13, 0x7f7fffff

    .line 223
    .local v13, bestScore:F
    move/from16 v0, v27

    new-array v11, v0, [I

    .line 225
    .local v11, bestGrouping:[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    .line 227
    const/16 v24, 0x0

    .line 228
    .local v24, lastDistance:F
    const/16 v33, 0x0

    .line 230
    .local v33, totalDistance:F
    move/from16 v23, v26

    .local v23, k:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 232
    div-int v15, v27, v23

    .line 233
    .local v15, delta:I
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 234
    mul-int v2, v20, v15

    aget-object v28, p0, v2

    .line 235
    .local v28, p:Lcom/android/gallery3d/data/LocationClustering$Point;
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 236
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 233
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 239
    .end local v28           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_1
    const/16 v21, 0x0

    .local v21, iter:I
    :goto_3
    const/16 v2, 0x1e

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 241
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 242
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 243
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 244
    const/4 v2, 0x0

    aput v2, v17, v20

    .line 241
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 246
    :cond_2
    const/16 v33, 0x0

    .line 248
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 249
    aget-object v28, p0, v20

    .line 250
    .restart local v28       #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    const v10, 0x7f7fffff

    .line 251
    .local v10, bestDistance:F
    const/4 v12, 0x0

    .line 252
    .local v12, bestIndex:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 253
    move-object/from16 v0, v28

    iget-wide v2, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget-object v6, v14, v22

    iget-wide v6, v6, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v22

    iget-wide v8, v8, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 258
    .local v16, distance:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    .line 259
    const/16 v16, 0x0

    .line 261
    :cond_3
    cmpg-float v2, v16, v10

    if-gez v2, :cond_4

    .line 262
    move/from16 v10, v16

    .line 263
    move/from16 v12, v22

    .line 252
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 266
    .end local v16           #distance:F
    :cond_5
    aput v12, v19, v20

    .line 267
    aget v2, v17, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v17, v12

    .line 268
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 269
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 270
    add-float v33, v33, v10

    .line 248
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 274
    .end local v10           #bestDistance:F
    .end local v12           #bestIndex:I
    .end local v22           #j:I
    .end local v28           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 275
    aget v2, v17, v20

    if-lez v2, :cond_7

    .line 276
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 277
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 274
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 281
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_9

    sub-float v2, v24, v33

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v33

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 289
    :cond_9
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 290
    .local v31, reassign:[I
    const/16 v29, 0x0

    .line 291
    .local v29, realK:I
    const/16 v20, 0x0

    move/from16 v30, v29

    .end local v29           #realK:I
    .local v30, realK:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 292
    aget v2, v17, v20

    if-lez v2, :cond_f

    .line 293
    add-int/lit8 v29, v30, 0x1

    .end local v30           #realK:I
    .restart local v29       #realK:I
    aput v30, v31, v20

    .line 291
    :goto_9
    add-int/lit8 v20, v20, 0x1

    move/from16 v30, v29

    .end local v29           #realK:I
    .restart local v30       #realK:I
    goto :goto_8

    .line 285
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    :cond_a
    move/from16 v24, v33

    .line 239
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 298
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    :cond_b
    move/from16 v0, v30

    int-to-float v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    mul-float v32, v33, v2

    .line 300
    .local v32, score:F
    cmpg-float v2, v32, v13

    if-gez v2, :cond_e

    .line 301
    move/from16 v13, v32

    .line 302
    const/4 v2, 0x0

    aput v30, p1, v2

    .line 303
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 304
    aget v2, v19, v20

    aget v2, v31, v2

    aput v2, v11, v20

    .line 303
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 306
    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_e

    .line 311
    .end local v15           #delta:I
    .end local v21           #iter:I
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    .end local v32           #score:F
    :cond_d
    return-object v11

    .line 230
    .restart local v15       #delta:I
    .restart local v21       #iter:I
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    .restart local v32       #score:F
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .end local v32           #score:F
    :cond_f
    move/from16 v29, v30

    .end local v30           #realK:I
    .restart local v29       #realK:I
    goto :goto_9
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 187
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 26
    .parameter "baseSet"

    .prologue
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v18

    .line 69
    .local v18, total:I
    move/from16 v0, v18

    new-array v4, v0, [Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 71
    .local v4, buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [D

    .line 72
    .local v12, latLong:[D
    new-instance v21, Lcom/android/gallery3d/data/LocationClustering$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v4}, Lcom/android/gallery3d/data/LocationClustering$1;-><init>(Lcom/android/gallery3d/data/LocationClustering;I[D[Lcom/android/gallery3d/data/LocationClustering$SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 84
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v19, withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v20, withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v15, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 88
    aget-object v17, v4, v9

    .line 89
    .local v17, s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    if-nez v17, :cond_0

    .line 87
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 90
    :cond_0
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v21, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 91
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v21, Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v24, v0

    invoke-direct/range {v21 .. v25}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>(DD)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v17           #s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v6, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 101
    .local v13, m:I
    if-lez v13, :cond_4

    .line 103
    new-array v0, v13, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v16, v0

    .line 104
    .local v16, pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    check-cast v16, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 105
    .restart local v16       #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v3, v0, [I

    .line 106
    .local v3, bestK:[I
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/gallery3d/data/LocationClustering;->kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I

    move-result-object v11

    .line 108
    .local v11, index:[I
    const/4 v9, 0x0

    :goto_2
    const/16 v21, 0x0

    aget v21, v3, v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_3

    .line 109
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 112
    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_4

    .line 113
    aget v21, v11, v9

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 117
    .end local v3           #bestK:[I
    .end local v11           #index:[I
    .end local v16           #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_4
    new-instance v7, Lcom/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v7, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, hasUnresolvedAddress:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 122
    .local v5, cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    invoke-static {v5, v7}, Lcom/android/gallery3d/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, name:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 128
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    const/4 v8, 0x1

    goto :goto_4

    .line 133
    .end local v5           #cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v14           #name:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_7

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_7
    if-eqz v8, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/gallery3d/data/LocationClustering$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocationClustering$2;-><init>(Lcom/android/gallery3d/data/LocationClustering;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_8
    return-void
.end method
