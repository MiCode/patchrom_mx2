.class public Lcom/android/gallery3d/gadget/LocalPhotoSource;
.super Ljava/lang/Object;
.source "LocalPhotoSource.java"

# interfaces
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_IMAGE_ROOT:Lcom/android/gallery3d/data/Path;

.field private static final ORDER:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;


# instance fields
.field private mContentDirty:Z

.field private mContentListener:Lcom/android/gallery3d/data/ContentListener;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->PROJECTION:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 54
    const-string v0, "%s != %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bucket_id"

    aput-object v2, v1, v3

    invoke-static {}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->getDownloadBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    .line 56
    const-string v0, "%s DESC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "datetaken"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->ORDER:Ljava/lang/String;

    .line 64
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->LOCAL_IMAGE_ROOT:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    .line 62
    iput-boolean v3, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentDirty:Z

    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 69
    new-instance v0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;-><init>(Lcom/android/gallery3d/gadget/LocalPhotoSource;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/gadget/LocalPhotoSource;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/gadget/LocalPhotoSource;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/gadget/LocalPhotoSource;)Lcom/android/gallery3d/data/ContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    return-object v0
.end method

.method private static getDownloadBucketId()I
    .locals 2

    .prologue
    .line 192
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, downloadsPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getExponentialIndice(II)[I
    .locals 12
    .parameter "total"
    .parameter "count"

    .prologue
    .line 106
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 107
    .local v3, random:Ljava/util/Random;
    if-le p2, p1, :cond_0

    move p2, p1

    .line 108
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    .local v5, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ge v8, p2, :cond_2

    .line 110
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    neg-double v8, v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 111
    .local v4, row:I
    if-ge v4, p1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v4           #row:I
    :cond_2
    new-array v7, p2, [I

    .line 114
    .local v7, values:[I
    const/4 v1, 0x0

    .line 115
    .local v1, index:I
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 116
    .local v6, value:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aput v6, v7, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 118
    .end local v6           #value:I
    :cond_3
    return-object v7
.end method

.method private getPhotoCount(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 122
    sget-object v1, Lcom/android/gallery3d/gadget/LocalPhotoSource;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 127
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isContentSound(I)Z
    .locals 13
    .parameter "totalCount"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v11

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v11, v10

    goto :goto_0

    .line 137
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v6, builder:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 139
    .local v9, imageId:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_3
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    .end local v9           #imageId:Ljava/lang/Long;
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/gadget/LocalPhotoSource;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "%s in (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v12, "_id"

    aput-object v12, v5, v11

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 146
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 148
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 149
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_5

    move v0, v10

    .line 151
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v11, v0

    goto :goto_0

    :cond_5
    move v0, v11

    .line 149
    goto :goto_2

    .line 151
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "index"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v3, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    move-object v3, v4

    .line 102
    :goto_0
    return-object v3

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 98
    .local v0, id:J
    iget-object v3, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    sget-object v5, Lcom/android/gallery3d/gadget/LocalPhotoSource;->LOCAL_IMAGE_ROOT:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v5, v0, v1}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 100
    .local v2, image:Lcom/android/gallery3d/data/MediaItem;
    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v2}, Lcom/android/gallery3d/gadget/WidgetUtils;->createWidgetBitmap(Lcom/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public reload()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-boolean v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentDirty:Z

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentDirty:Z

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 160
    .local v13, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v13}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->getPhotoCount(Landroid/content/ContentResolver;)I

    move-result v12

    .line 161
    .local v12, photoCount:I
    invoke-direct {p0, v12}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->isContentSound(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/16 v0, 0x80

    invoke-direct {p0, v12, v0}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->getExponentialIndice(II)[I

    move-result-object v7

    .line 164
    .local v7, choosedIds:[I
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/gadget/LocalPhotoSource;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/gadget/LocalPhotoSource;->PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/gallery3d/gadget/LocalPhotoSource;->ORDER:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 171
    move-object v6, v7

    .local v6, arr$:[I
    :try_start_0
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_3

    aget v10, v6, v9

    .line 172
    .local v10, index:I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 177
    .end local v10           #index:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #i$:I
    .end local v11           #len$:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;

    .line 201
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->reload()V

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
