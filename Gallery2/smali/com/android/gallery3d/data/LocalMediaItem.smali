.class public abstract Lcom/android/gallery3d/data/LocalMediaItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public height:I

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 47
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    .line 48
    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    .line 61
    return-void
.end method

.method private static closeInputStream(Ljava/io/FileInputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static closeOutputStream(Ljava/io/FileOutputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .parameter "srcFile"
    .parameter "dstFile"

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, bytesRead:I
    const/4 v6, 0x0

    .line 213
    .local v6, totalWritten:I
    invoke-static {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 214
    .local v3, input:Ljava/io/FileInputStream;
    invoke-static {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 215
    .local v4, output:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    .line 217
    .local v5, successed:Z
    const/16 v7, 0x1000

    :try_start_0
    new-array v0, v7, [B

    .line 218
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 219
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    add-int/2addr v6, v1

    goto :goto_0

    .line 225
    :cond_0
    if-eqz v3, :cond_1

    .line 226
    invoke-static {v3}, Lcom/android/gallery3d/data/LocalMediaItem;->closeInputStream(Ljava/io/FileInputStream;)V

    .line 228
    :cond_1
    if-eqz v4, :cond_2

    .line 229
    invoke-static {v4}, Lcom/android/gallery3d/data/LocalMediaItem;->closeOutputStream(Ljava/io/FileOutputStream;)V

    .line 231
    :cond_2
    int-to-long v7, v6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 233
    const/4 v5, 0x0

    .line 236
    .end local v0           #buffer:[B
    :cond_3
    :goto_1
    return v5

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v3, :cond_4

    .line 226
    invoke-static {v3}, Lcom/android/gallery3d/data/LocalMediaItem;->closeInputStream(Ljava/io/FileInputStream;)V

    .line 228
    :cond_4
    if-eqz v4, :cond_5

    .line 229
    invoke-static {v4}, Lcom/android/gallery3d/data/LocalMediaItem;->closeOutputStream(Ljava/io/FileOutputStream;)V

    .line 231
    :cond_5
    int-to-long v7, v6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 233
    const/4 v5, 0x0

    goto :goto_1

    .line 225
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_6

    .line 226
    invoke-static {v3}, Lcom/android/gallery3d/data/LocalMediaItem;->closeInputStream(Ljava/io/FileInputStream;)V

    .line 228
    :cond_6
    if-eqz v4, :cond_7

    .line 229
    invoke-static {v4}, Lcom/android/gallery3d/data/LocalMediaItem;->closeOutputStream(Ljava/io/FileOutputStream;)V

    .line 231
    :cond_7
    int-to-long v8, v6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 233
    const/4 v5, 0x0

    :cond_8
    throw v7
.end method

.method public static copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFile"
    .parameter "dir"
    .parameter "prefix"

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/android/gallery3d/data/LocalMediaItem;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 201
    .local v0, dstFile:Ljava/io/File;
    invoke-static {p0, v0}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFile"
    .parameter "root"
    .parameter "dir"
    .parameter "prefix"

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 207
    .local v0, dstFile:Ljava/io/File;
    invoke-static {p0, v0}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "src"
    .parameter "root"
    .parameter "dir"
    .parameter "prefix"

    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "dir"
    .parameter "name"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x58

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    .line 158
    :goto_0
    return-object v4

    .line 138
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, newName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 140
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    .line 144
    goto :goto_0

    .line 147
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (%d) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, format:Ljava/lang/String;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_1
    const v4, 0x7fffffff

    if-ge v2, v4, :cond_5

    .line 149
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 151
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v0

    .line 155
    goto :goto_0

    .line 148
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isSameDev(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v1, 0x0

    .line 241
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v2

    iget-wide v2, v2, Llibcore/io/StructStat;->st_dev:J

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v4

    iget-wide v4, v4, Llibcore/io/StructStat;->st_dev:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->printStackTrace()V

    goto :goto_0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .parameter "srcFile"
    .parameter "dstFile"

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;->isSameDev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-static {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 267
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFile"
    .parameter "root"
    .parameter "dir"
    .parameter "prefix"

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 260
    .local v0, dstFile:Ljava/io/File;
    invoke-static {p0, v0}, Lcom/android/gallery3d/data/LocalMediaItem;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "src"
    .parameter "root"
    .parameter "dir"
    .parameter "prefix"

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "file"

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2
    .parameter "file"

    .prologue
    .line 180
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "srcDir"
    .parameter "dstDir"
    .parameter "prefix"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateInMs()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 94
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 95
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 97
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 98
    .local v1, formater:Ljava/text/DateFormat;
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 100
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v5, v3, v4

    iget-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 103
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 104
    :cond_1
    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 75
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 76
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 77
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public moveTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "srcDir"
    .parameter "dstDir"
    .parameter "prefix"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalMediaItem;->moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract updateContent()V
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/android/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 90
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
