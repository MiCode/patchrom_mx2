.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetEntry"
.end annotation


# instance fields
.field public album:Lcom/android/gallery3d/data/MediaSet;

.field public cacheFlag:I

.field public cacheStatus:I

.field public coverItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;",
            ">;"
        }
    .end annotation
.end field

.field private fontScale:F

.field private labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

.field public labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public setDataVersion:J

.field public setPath:Lcom/android/gallery3d/data/Path;

.field public sourceType:I

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->fontScale:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->fontScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->layout(III)V

    return-void
.end method

.method private layout(III)V
    .locals 24
    .parameter "slotWidth"
    .parameter "coverWidth"
    .parameter "coverMargin"

    .prologue
    .line 110
    move/from16 v3, p2

    .line 114
    .local v3, bottom:I
    add-int v12, p1, p3

    .line 115
    .local v12, lastRight:I
    move v15, v12

    .line 117
    .local v15, minLeft:I
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v16, v21, -0x1

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-gt v8, v0, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 119
    .local v17, rect:Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 120
    .local v20, width:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 122
    .local v7, height:I
    sub-int v12, v12, p3

    .line 124
    move/from16 v18, v12

    .line 126
    .local v18, right:I
    sub-int v13, v18, v20

    .line 128
    .local v13, left:I
    if-gez v13, :cond_2

    .line 129
    const/4 v13, 0x0

    .line 130
    move/from16 v18, v20

    .line 136
    :cond_0
    :goto_1
    sub-int v19, v3, v7

    .line 138
    .local v19, top:I
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    if-ge v13, v15, :cond_1

    .line 141
    move v15, v13

    .line 143
    :cond_1
    move/from16 v12, v18

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 131
    .end local v19           #top:I
    :cond_2
    move/from16 v0, v16

    if-ne v8, v0, :cond_0

    if-le v13, v15, :cond_0

    .line 132
    move v13, v15

    .line 133
    add-int v18, v13, v20

    goto :goto_1

    .line 146
    .end local v7           #height:I
    .end local v13           #left:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v18           #right:I
    .end local v20           #width:I
    :cond_3
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_4

    .line 147
    div-int/lit8 v15, v15, 0x2

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 149
    .local v5, cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    neg-int v0, v15

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 153
    .end local v5           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, j:I
    :goto_3
    if-ge v8, v10, :cond_9

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 155
    .restart local v5       #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    if-nez v8, :cond_6

    .line 156
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    .line 153
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 159
    :cond_6
    const/4 v14, 0x0

    .line 160
    .local v14, maxHeight:I
    const/4 v11, 0x0

    .local v11, k:I
    :goto_5
    if-ge v11, v8, :cond_8

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;

    .line 162
    .local v4, c:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    iget-object v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget-object v0, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 163
    iget-object v0, v4, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 164
    .local v6, h:I
    if-le v6, v14, :cond_7

    .line 165
    move v14, v6

    .line 160
    .end local v6           #h:I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 169
    .end local v4           #c:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    :cond_8
    iget-object v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->rect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    iput v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    .line 170
    iget v0, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v14, :cond_5

    .line 171
    iput v14, v5, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;->shadowHeight:I

    goto :goto_4

    .line 174
    .end local v5           #cover:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCover;
    .end local v11           #k:I
    .end local v14           #maxHeight:I
    :cond_9
    return-void
.end method
