.class public Lcom/android/gallery3d/data/LocalAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private mDirectory:Ljava/lang/String;

.field private final mIsCustomFolder:Z

.field private final mIsImage:Z

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mLockedSubFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNameLocale:Ljava/util/Locale;

.field private final mNoSubSet:Z

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereArgs:[Ljava/lang/String;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COUNT(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V
    .locals 10
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 172
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;ZZI)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;ZZI)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"
    .parameter "dir"
    .parameter "noSubSet"
    .parameter "isCustomFolder"
    .parameter "itemCount"

    .prologue
    .line 96
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mLockedSubFiles:Ljava/util/ArrayList;

    .line 97
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 98
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 99
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 100
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p3, p5}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 101
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNameLocale:Ljava/util/Locale;

    .line 102
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 103
    iput-boolean p8, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsCustomFolder:Z

    .line 105
    invoke-direct {p0, p6}, Lcom/android/gallery3d/data/LocalAlbum;->getLikeDirArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, directory:Ljava/lang/String;
    if-nez p7, :cond_0

    .line 107
    if-nez v0, :cond_0

    .line 108
    const/4 p7, 0x1

    .line 112
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-direct {p0, v1, p4}, Lcom/android/gallery3d/data/LocalAlbum;->getOrderClause(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 114
    if-eqz p4, :cond_3

    .line 115
    if-eqz v0, :cond_2

    if-nez p7, :cond_2

    .line 116
    const-string v1, "_data LIKE ?"

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 120
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 121
    sget-object v1, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 122
    sget-object v1, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 134
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p7, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #directory:Ljava/lang/String;
    :cond_1
    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereArgs:[Ljava/lang/String;

    .line 136
    iput-object p6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDirectory:Ljava/lang/String;

    .line 137
    iput-boolean p7, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNoSubSet:Z

    .line 139
    new-instance v1, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 140
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    .line 141
    iput p9, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 142
    return-void

    .line 118
    .restart local v0       #directory:Ljava/lang/String;
    :cond_2
    const-string v1, "bucket_id = ?"

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_3
    if-eqz v0, :cond_4

    if-nez p7, :cond_4

    .line 125
    const-string v1, "_data LIKE ?"

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 129
    :goto_2
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 130
    sget-object v1, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 131
    sget-object v1, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_1

    .line 127
    :cond_4
    const-string v1, "bucket_id = ?"

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_2
.end method

.method private copyDir(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "srcFile"
    .parameter "dirFile"
    .parameter "prefix"
    .parameter "noSubSet"

    .prologue
    const/4 v6, 0x0

    .line 392
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 393
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v6

    .line 398
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, dir:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 400
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 401
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 402
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    if-nez p4, :cond_2

    .line 404
    invoke-direct {p0, v2, v1, p3}, Lcom/android/gallery3d/data/LocalAlbum;->copyDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 401
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v7, v8}, Lcom/android/gallery3d/data/LocalAlbum;->isMediaFile(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 410
    invoke-static {v2, v1, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 417
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private copyDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFile"
    .parameter "dir"
    .parameter "prefix"

    .prologue
    .line 385
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 386
    .local v0, dirFile:Ljava/io/File;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/gallery3d/data/LocalAlbum;->copyDir(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 329
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getLikeDirArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dir"

    .prologue
    const/16 v1, 0x2f

    .line 479
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    :goto_0
    return-object p1

    .line 485
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "bucketId"
    .parameter "name"

    .prologue
    .line 555
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_1

    .line 556
    const v0, 0x7f0a01b3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 573
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 557
    .restart local p2
    :cond_1
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DOWNLOAD_BUCKET_ID:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    .line 559
    :cond_2
    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 560
    :cond_3
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_4

    .line 561
    const v0, 0x7f0a01b5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 562
    :cond_4
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p1, v0, :cond_5

    .line 563
    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 564
    :cond_5
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_BUCKET_ID:I

    if-ne p1, v0, :cond_6

    .line 565
    const v0, 0x7f0a01b7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 566
    :cond_6
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    if-ne p1, v0, :cond_7

    .line 567
    const v0, 0x7f0a01b8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 568
    :cond_7
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_BUCKET_ID:I

    if-ne p1, v0, :cond_8

    .line 569
    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 570
    :cond_8
    sget v0, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    .line 571
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 20
    .parameter "application"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 270
    .local v18, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    :goto_0
    return-object v18

    .line 271
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 272
    .local v14, idLow:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 278
    .local v13, idHigh:I
    if-eqz p1, :cond_1

    .line 279
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 280
    .local v3, baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 281
    .local v4, projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 288
    .local v16, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 289
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 290
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 293
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 294
    const-string v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 284
    .restart local v3       #baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 285
    .restart local v4       #projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .restart local v16       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_1

    .line 298
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 299
    .local v17, n:I
    const/4 v11, 0x0

    .line 301
    .local v11, i:I
    :cond_3
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 302
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 305
    .local v12, id:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_3

    .line 309
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_6

    .line 310
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 323
    .end local v12           #id:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 315
    .restart local v12       #id:I
    :cond_6
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 316
    .local v8, childPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v15

    .line 318
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    add-int/lit8 v11, v11, 0x1

    .line 320
    goto :goto_2

    .line 323
    .end local v8           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v11           #i:I
    .end local v12           #id:I
    .end local v15           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v17           #n:I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private getOrderClause(IZ)Ljava/lang/String;
    .locals 2
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, order:Ljava/lang/String;
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->PHOTO_DOWNLOAD_BUCKET_ID:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->VIDEO_DOWNLOAD_BUCKET_ID:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p1, v1, :cond_1

    .line 151
    :cond_0
    const-string v0, "datetaken DESC, _id DESC"

    .line 167
    :goto_0
    return-object v0

    .line 152
    :cond_1
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_BUCKET_ID:I

    if-ne p1, v1, :cond_2

    .line 153
    const-string v0, "date_modified DESC, _id DESC"

    goto :goto_0

    .line 154
    :cond_2
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->RECORD_BUCKET_ID:I

    if-ne p1, v1, :cond_3

    .line 155
    const-string v0, "datetaken DESC, _id DESC"

    goto :goto_0

    .line 157
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNoSubSet:Z

    if-eqz v1, :cond_4

    .line 158
    const-string v0, "title"

    goto :goto_0

    .line 160
    :cond_4
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v1, :cond_5

    .line 161
    const-string v0, "parent, bucket_display_name, title"

    goto :goto_0

    .line 163
    :cond_5
    const-string v0, "parent, bucket_display_name, title"

    goto :goto_0
.end method

.method private getOtherFilesCount()I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 491
    iget-boolean v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v1, :cond_0

    move v8, v0

    .line 492
    .local v8, mediaType:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE ? AND format != 12289 AND media_type != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->getLikeDirArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, dir:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    aput-object v7, v4, v5

    .line 499
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 502
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, -0x1

    .line 507
    :goto_1
    return v0

    .line 491
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #dir:Ljava/lang/String;
    .end local v8           #mediaType:I
    :cond_0
    const/4 v8, 0x3

    goto :goto_0

    .line 506
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #dir:Ljava/lang/String;
    .restart local v8       #mediaType:I
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 507
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 509
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 252
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 253
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 254
    if-eqz p4, :cond_0

    .line 255
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 262
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 257
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private moveDir(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)Z
    .locals 10
    .parameter "srcFile"
    .parameter "dirFile"
    .parameter "prefix"
    .parameter "sameDev"
    .parameter "noOtherFiles"

    .prologue
    .line 451
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0

    .line 457
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, dir:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 459
    .local v7, files:[Ljava/io/File;
    if-eqz v7, :cond_4

    .line 460
    move-object v6, v7

    .local v6, arr$:[Ljava/io/File;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v1, v6, v8

    .line 461
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 462
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;->moveDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 463
    const/4 v0, 0x0

    goto :goto_0

    .line 466
    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v0, v3}, Lcom/android/gallery3d/data/LocalAlbum;->isMediaFile(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    :cond_2
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/android/gallery3d/data/LocalAlbum;->moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 468
    const/4 v0, 0x0

    goto :goto_0

    .line 460
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 475
    .end local v1           #file:Ljava/io/File;
    .end local v6           #arr$:[Ljava/io/File;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method private moveDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 6
    .parameter "srcFile"
    .parameter "dir"
    .parameter "prefix"
    .parameter "sameDev"
    .parameter "noOtherFiles"

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 443
    .local v2, dstDirFile:Ljava/io/File;
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 444
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 446
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;->moveDir(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method private moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "srcFile"
    .parameter "dir"
    .parameter "prefix"
    .parameter "sameDev"

    .prologue
    .line 432
    if-eqz p4, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 434
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 436
    .end local v0           #dstFile:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private noOtherFiles()Z
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getOtherFilesCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateItemLockState(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/16 v7, 0x8

    .line 619
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->updateLockState()V

    .line 621
    iget-wide v3, p1, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    sget-wide v5, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 622
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/data/MediaItem;->setLockState(I)V

    .line 624
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->isLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    if-nez v3, :cond_2

    .line 625
    :cond_0
    sget-wide v3, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    iput-wide v3, p1, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_3

    .line 630
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaItem;->setLockState(I)V

    .line 631
    sget-wide v3, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    iput-wide v3, p1, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 635
    check-cast v3, Lcom/android/gallery3d/data/LocalMediaItem;

    iget-object v1, v3, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 636
    .local v1, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mLockedSubFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    .local v0, file:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_5

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 639
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaItem;->setLockState(I)V

    .line 640
    sget-wide v3, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    iput-wide v3, p1, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    goto :goto_0

    .line 644
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 645
    invoke-virtual {p1, v7}, Lcom/android/gallery3d/data/MediaItem;->setLockState(I)V

    .line 646
    sget-wide v3, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    iput-wide v3, p1, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    goto :goto_0

    .line 651
    .end local v0           #file:Ljava/lang/String;
    :cond_6
    sget-wide v3, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    iput-wide v3, p1, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    goto :goto_0
.end method


# virtual methods
.method public copyTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "srcDir"
    .parameter "dstDir"
    .parameter "prefix"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, src:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 424
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v2, srcFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, dirFile:Ljava/io/File;
    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNoSubSet:Z

    invoke-direct {p0, v2, v0, p3, v3}, Lcom/android/gallery3d/data/LocalAlbum;->copyDir(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v3

    .line 428
    .end local v0           #dirFile:Ljava/io/File;
    .end local v2           #srcFile:Ljava/io/File;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 379
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 382
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 12
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    const/4 v7, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 221
    .local v9, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 222
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 225
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 226
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return v7

    .line 230
    :cond_0
    const/4 v7, 0x0

    .line 232
    .local v7, count:I
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 236
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 237
    .local v10, id:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 238
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v8, v9, v0, v2}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    .line 240
    .local v11, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-direct {p0, v11}, Lcom/android/gallery3d/data/LocalAlbum;->updateItemLockState(Lcom/android/gallery3d/data/MediaItem;)V

    .line 241
    add-int v0, p2, v7

    invoke-virtual {p1, v0, v11}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    add-int/lit8 v7, v7, 0x1

    .line 243
    goto :goto_1

    .line 245
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v10           #id:I
    .end local v11           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDirLockState(Ljava/util/ArrayList;I)I
    .locals 6
    .parameter
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, subFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, dir:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    iget-boolean v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNoSubSet:Z

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;->getDirLockState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;ZZI)I

    move-result v0

    .line 603
    :goto_0
    return v0

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 603
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getDirectoryByBucketId(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDirectory:Ljava/lang/String;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 12
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 193
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, uri:Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 199
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 200
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-object v11

    .line 205
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 207
    .local v9, id:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 208
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    .line 210
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-direct {p0, v10}, Lcom/android/gallery3d/data/LocalAlbum;->updateItemLockState(Lcom/android/gallery3d/data/MediaItem;)V

    .line 211
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 214
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v9           #id:I
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 335
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 338
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 339
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 349
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 343
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 344
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 349
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 346
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 373
    const/16 v0, 0x3405

    return v0
.end method

.method public isCustomFolder()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsCustomFolder:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public moveTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "srcDir"
    .parameter "dstDir"
    .parameter "prefix"

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getDirectory()Ljava/lang/String;

    move-result-object v11

    .line 520
    .local v11, src:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 521
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, srcFile:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->noOtherFiles()Z

    move-result v5

    .line 524
    .local v5, noOtherFiles:Z
    invoke-static {v11, p2}, Lcom/android/gallery3d/data/LocalMediaItem;->isSameDev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 527
    .local v4, sameDev:Z
    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNoSubSet:Z

    if-eqz v2, :cond_4

    .line 528
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 529
    .local v8, files:[Ljava/io/File;
    if-eqz v8, :cond_3

    .line 530
    move-object v6, v8

    .local v6, arr$:[Ljava/io/File;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v7, v6, v9

    .line 531
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 532
    if-nez v5, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/LocalAlbum;->isMediaFile(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    :cond_0
    invoke-direct {p0, v7, p2, p3, v4}, Lcom/android/gallery3d/data/LocalAlbum;->moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 545
    .end local v1           #srcFile:Ljava/io/File;
    .end local v4           #sameDev:Z
    .end local v5           #noOtherFiles:Z
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #files:[Ljava/io/File;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_1
    :goto_1
    return v0

    .line 530
    .restart local v1       #srcFile:Ljava/io/File;
    .restart local v4       #sameDev:Z
    .restart local v5       #noOtherFiles:Z
    .restart local v6       #arr$:[Ljava/io/File;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #files:[Ljava/io/File;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 540
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #file:Ljava/io/File;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .end local v8           #files:[Ljava/io/File;
    :cond_4
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 542
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;->moveDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_1
.end method

.method public reload()J
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNameLocale:Ljava/util/Locale;

    sget-object v1, Lcom/android/gallery3d/common/Utils;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 368
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public updateLockState()V
    .locals 4

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    sget-wide v2, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 610
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    .line 611
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->isLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mLockedSubFiles:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->getDirLockState(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockState:I

    .line 614
    :cond_0
    sget-wide v0, Lcom/android/gallery3d/data/LocalAlbum;->sLockStateVersion:J

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mLockStateVersion:J

    .line 616
    :cond_1
    return-void
.end method
