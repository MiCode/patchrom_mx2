.class public Lcom/android/gallery3d/data/LocalVideo;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field static final ITEM_PATH:Lcom/android/gallery3d/data/Path;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private resolution:Ljava/lang/String;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 56
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "resolution"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 6
    .parameter "path"
    .parameter "context"
    .parameter "id"

    .prologue
    .line 86
    invoke-static {}, Lcom/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 87
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 88
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 90
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 92
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    return-void

    .line 98
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 80
    invoke-static {}, Lcom/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 81
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 82
    invoke-direct {p0, p3}, Lcom/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    .line 83
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 107
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 110
    .local v0, dot:I
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, pathLength:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-eq v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 115
    .end local v0           #dot:I
    .end local v1           #pathLength:I
    :cond_0
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 116
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 117
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 118
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 119
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 120
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 121
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 122
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    .line 123
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalVideo;->rotation:I

    .line 124
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 125
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 126
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/LocalVideo;->parseResolution(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private parseResolution(Ljava/lang/String;)V
    .locals 5
    .parameter "resolution"

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 133
    .local v1, m:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 135
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, w:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, h:I
    iget v4, p0, Lcom/android/gallery3d/data/LocalVideo;->rotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_2

    .line 138
    iput v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 139
    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v0           #h:I
    .end local v3           #w:I
    :catch_0
    move-exception v2

    .line 145
    .local v2, t:Ljava/lang/Throwable;
    const-string v4, "LocalVideo"

    invoke-static {v4, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v0       #h:I
    .restart local v3       #w:I
    :cond_2
    :try_start_1
    iput v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 142
    iput v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 220
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 221
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 222
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 225
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 234
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 235
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 5

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 251
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v1, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    .line 252
    .local v1, s:I
    if-lez v1, :cond_0

    .line 253
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 255
    const/4 v2, 0x7

    iget v3, p0, Lcom/android/gallery3d/data/LocalVideo;->rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 257
    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x3485

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalVideo;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 230
    return-void
.end method

.method public updateContent()V
    .locals 5

    .prologue
    .line 272
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 273
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 274
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/LocalVideo;->updateContent(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 151
    new-instance v3, Lcom/android/gallery3d/util/UpdateHelper;

    invoke-direct {v3}, Lcom/android/gallery3d/util/UpdateHelper;-><init>()V

    .line 152
    .local v3, uh:Lcom/android/gallery3d/util/UpdateHelper;
    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    .line 154
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, cap:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 157
    .local v1, dot:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 158
    .local v2, pathLength:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    .line 159
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    .end local v1           #dot:I
    .end local v2           #pathLength:I
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    .line 164
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    .line 165
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 166
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 167
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    .line 169
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateAddedInSec:J

    .line 171
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 173
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 174
    iget v4, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    .line 176
    iget v4, p0, Lcom/android/gallery3d/data/LocalVideo;->rotation:I

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/data/LocalVideo;->rotation:I

    .line 177
    iget v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    .line 178
    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 179
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    const/16 v5, 0xd

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    .line 180
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/gallery3d/data/LocalVideo;->parseResolution(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v4

    return v4
.end method
