.class public Lcom/android/gallery3d/ui/DetailsSaveFileHelper;
.super Ljava/lang/Object;
.source "DetailsSaveFileHelper.java"


# static fields
.field private static final NEW_FILE_PATH:Ljava/lang/String;


# instance fields
.field private mBackHandler:Landroid/os/Handler;

.field private final mContext:Lcom/android/gallery3d/app/GalleryActivity;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mSaveImageThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->NEW_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    .line 39
    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mBackHandler:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->creatSaveFileThread()V

    .line 45
    return-void
.end method

.method private creatSaveFileThread()V
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "details savefile thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 55
    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mBackHandler:Landroid/os/Handler;

    .line 64
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public changeFileName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "srcPath"
    .parameter "destPath"
    .parameter "overwrite"

    .prologue
    .line 223
    if-eqz p3, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkFilePathExists(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 276
    :cond_0
    return-void
.end method

.method public closeOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "srcPath"
    .parameter "destPath"

    .prologue
    const/4 v7, 0x0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, byteread:I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, srcfile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, destfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 236
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v4, inStream:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v5, outStream:Ljava/io/OutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 239
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 240
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 246
    .end local v0           #buffer:[B
    .end local v2           #destfile:Ljava/io/File;
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #srcfile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 249
    :cond_0
    :goto_1
    return v7

    .line 242
    .restart local v0       #buffer:[B
    .restart local v2       #destfile:Ljava/io/File;
    .restart local v4       #inStream:Ljava/io/InputStream;
    .restart local v5       #outStream:Ljava/io/OutputStream;
    .restart local v6       #srcfile:Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 243
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public createFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .parameter "oldPath"
    .parameter "newTitle"
    .parameter "mimeType"
    .parameter "overwrite"
    .parameter "needResize"

    .prologue
    .line 105
    if-eqz p4, :cond_1

    .line 106
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, newPath:Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v1           #newPath:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 110
    .restart local v1       #newPath:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, format:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 114
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #newPath:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->NEW_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->checkFilePathExists(Ljava/lang/String;)V

    .line 115
    if-eqz p5, :cond_2

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->NEW_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 118
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0       #format:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->NEW_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 89
    const-string v0, "image/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 81
    const-string v0, "image/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, ".png"

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".jpg"

    goto :goto_0
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "filPath"

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mSaveImageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 287
    :cond_0
    return-void
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "srcPath"
    .parameter "destPath"

    .prologue
    .line 253
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, oldFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, newFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 258
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)Z
    .locals 31
    .parameter "oldPath"
    .parameter "newPath"
    .parameter "newTilte"
    .parameter "oldWidth"
    .parameter "oldHeight"
    .parameter "newWidth"
    .parameter "newHeight"
    .parameter "overwrite"

    .prologue
    .line 126
    const/16 v20, 0x0

    .line 127
    .local v20, newFile:Ljava/io/File;
    const/16 v24, 0x0

    .line 129
    .local v24, os:Ljava/io/OutputStream;
    move/from16 v0, p6

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float v27, v4, v5

    .line 130
    .local v27, scaleX:F
    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    div-float v28, v4, v5

    .line 131
    .local v28, scaleY:F
    :try_start_0
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v26

    .line 133
    .local v26, sample:I
    const/4 v14, 0x0

    .line 135
    .local v14, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v23, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 136
    .local v23, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    const/4 v4, 0x1

    move/from16 v0, v26

    if-le v0, v4, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v25

    .line 142
    .local v25, rotation:I
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 144
    const/16 v4, 0x5a

    move/from16 v0, v25

    if-eq v0, v4, :cond_0

    const/16 v4, 0x10e

    move/from16 v0, v25

    if-ne v0, v4, :cond_4

    .line 145
    :cond_0
    move/from16 v16, p7

    .line 146
    .local v16, dstWidth:I
    move/from16 v15, p6

    .line 152
    .local v15, dstHeight:I
    :goto_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move/from16 v0, v16

    if-ne v4, v0, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v15, :cond_2

    .line 153
    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-static {v14, v0, v15, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 155
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v25

    invoke-static {v14, v0, v4}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    .line 161
    .end local v15           #dstHeight:I
    .end local v16           #dstWidth:I
    .end local v23           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v25           #rotation:I
    :cond_3
    :goto_1
    if-eqz p8, :cond_b

    .line 162
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 163
    .local v30, tmpPath:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    .end local v20           #newFile:Ljava/io/File;
    .local v21, newFile:Ljava/io/File;
    const/16 v19, 0x0

    .line 165
    .local v19, i:I
    :goto_2
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_5

    .line 166
    const-string v4, "%s-%03d.tmp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 167
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v21           #newFile:Ljava/io/File;
    .restart local v20       #newFile:Ljava/io/File;
    move-object/from16 v21, v20

    .end local v20           #newFile:Ljava/io/File;
    .restart local v21       #newFile:Ljava/io/File;
    goto :goto_2

    .line 148
    .end local v19           #i:I
    .end local v21           #newFile:Ljava/io/File;
    .end local v30           #tmpPath:Ljava/lang/String;
    .restart local v20       #newFile:Ljava/io/File;
    .restart local v23       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v25       #rotation:I
    :cond_4
    move/from16 v16, p6

    .line 149
    .restart local v16       #dstWidth:I
    move/from16 v15, p7

    .restart local v15       #dstHeight:I
    goto :goto_0

    .line 157
    .end local v15           #dstHeight:I
    .end local v16           #dstWidth:I
    .end local v23           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v25           #rotation:I
    :catch_0
    move-exception v17

    .line 158
    .local v17, e:Ljava/lang/OutOfMemoryError;
    const/4 v14, 0x0

    goto :goto_1

    .end local v17           #e:Ljava/lang/OutOfMemoryError;
    .end local v20           #newFile:Ljava/io/File;
    .restart local v19       #i:I
    .restart local v21       #newFile:Ljava/io/File;
    .restart local v30       #tmpPath:Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v21

    .line 172
    .end local v19           #i:I
    .end local v21           #newFile:Ljava/io/File;
    .end local v30           #tmpPath:Ljava/lang/String;
    .restart local v20       #newFile:Ljava/io/File;
    :goto_3
    :try_start_4
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 174
    .end local v24           #os:Ljava/io/OutputStream;
    .local v12, os:Ljava/io/OutputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->getCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v18

    .line 175
    .local v18, format:Landroid/graphics/Bitmap$CompressFormat;
    if-eqz v14, :cond_13

    .line 176
    const/16 v4, 0x5a

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v4, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 177
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 178
    const/16 v20, 0x0

    .line 179
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 180
    const/4 v4, 0x0

    .line 201
    if-eqz v12, :cond_6

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 204
    :cond_6
    if-eqz v20, :cond_a

    .line 205
    const-string v5, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "image/jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 206
    :cond_7
    throw v20

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 208
    :cond_8
    if-eqz p8, :cond_a

    .line 209
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v22, oldFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 213
    :cond_9
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v29, tempFie:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    throw v0

    .line 215
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #format:Landroid/graphics/Bitmap$CompressFormat;
    .end local v26           #sample:I
    :goto_4
    move-object/from16 v20, v29

    .line 219
    .end local v22           #oldFile:Ljava/io/File;
    .end local v29           #tempFie:Ljava/io/File;
    :cond_a
    :goto_5
    return v4

    .line 170
    .end local v12           #os:Ljava/io/OutputStream;
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    .restart local v24       #os:Ljava/io/OutputStream;
    .restart local v26       #sample:I
    :cond_b
    :try_start_6
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v20           #newFile:Ljava/io/File;
    .restart local v21       #newFile:Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21           #newFile:Ljava/io/File;
    .restart local v20       #newFile:Ljava/io/File;
    goto/16 :goto_3

    .line 182
    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    .restart local v18       #format:Landroid/graphics/Bitmap$CompressFormat;
    :cond_c
    :try_start_7
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 201
    :cond_d
    if-eqz v12, :cond_e

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 204
    :cond_e
    if-eqz v20, :cond_12

    .line 205
    const-string v4, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "image/jpg"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 206
    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 208
    :cond_10
    if-eqz p8, :cond_12

    .line 209
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v22       #oldFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 213
    :cond_11
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v29       #tempFie:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 215
    move-object/from16 v20, v29

    .line 219
    .end local v22           #oldFile:Ljava/io/File;
    .end local v29           #tempFie:Ljava/io/File;
    :cond_12
    const/4 v4, 0x1

    goto :goto_5

    .line 184
    :cond_13
    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v9

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v10, 0x1

    :goto_6
    const/16 v11, 0x5a

    const/16 v4, 0x1000

    new-array v13, v4, [B

    move-object/from16 v4, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v4 .. v13}, Lcom/android/gallery3d/app/CropImage;->nativeSaveFromFile(Ljava/lang/String;Landroid/graphics/Rect;IILandroid/graphics/Rect;IIILjava/io/OutputStream;[B)Z

    move-result v4

    if-nez v4, :cond_d

    .line 189
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 190
    const/16 v20, 0x0

    .line 191
    const/4 v4, 0x0

    .line 201
    if-eqz v12, :cond_14

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 204
    :cond_14
    if-eqz v20, :cond_a

    .line 205
    const-string v5, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "image/jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 206
    :cond_15
    throw v20

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 208
    :cond_16
    if-eqz p8, :cond_a

    .line 209
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v22       #oldFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 213
    :cond_17
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v29       #tempFie:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    throw v0

    goto/16 :goto_4

    .line 184
    .end local v22           #oldFile:Ljava/io/File;
    .end local v29           #tempFie:Ljava/io/File;
    :cond_18
    const/4 v10, 0x0

    goto :goto_6

    .line 194
    .end local v12           #os:Ljava/io/OutputStream;
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #format:Landroid/graphics/Bitmap$CompressFormat;
    .end local v26           #sample:I
    .restart local v24       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v17

    move-object/from16 v12, v24

    .line 195
    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    .local v17, e:Ljava/io/FileNotFoundException;
    :goto_7
    const/16 v20, 0x0

    .line 196
    const/4 v4, 0x0

    .line 201
    if-eqz v12, :cond_19

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 204
    :cond_19
    if-eqz v20, :cond_a

    .line 205
    const-string v5, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "image/jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 206
    :cond_1a
    throw v20

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 208
    :cond_1b
    if-eqz p8, :cond_a

    .line 209
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v22       #oldFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 213
    :cond_1c
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v29       #tempFie:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    throw v0

    goto/16 :goto_4

    .line 197
    .end local v12           #os:Ljava/io/OutputStream;
    .end local v17           #e:Ljava/io/FileNotFoundException;
    .end local v22           #oldFile:Ljava/io/File;
    .end local v29           #tempFie:Ljava/io/File;
    .restart local v24       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v17

    move-object/from16 v12, v24

    .line 198
    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    .local v17, e:Ljava/io/IOException;
    :goto_8
    const/16 v20, 0x0

    .line 199
    const/4 v4, 0x0

    .line 201
    if-eqz v12, :cond_1d

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 204
    :cond_1d
    if-eqz v20, :cond_a

    .line 205
    const-string v5, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "image/jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 206
    :cond_1e
    throw v20

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 208
    :cond_1f
    if-eqz p8, :cond_a

    .line 209
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v22       #oldFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 213
    :cond_20
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v29       #tempFie:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    throw v0

    goto/16 :goto_4

    .line 201
    .end local v12           #os:Ljava/io/OutputStream;
    .end local v17           #e:Ljava/io/IOException;
    .end local v22           #oldFile:Ljava/io/File;
    .end local v29           #tempFie:Ljava/io/File;
    .restart local v24       #os:Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    move-object/from16 v12, v24

    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    :goto_9
    if-eqz v12, :cond_21

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 204
    :cond_21
    if-eqz v20, :cond_25

    .line 205
    const-string v5, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "image/jpg"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 206
    :cond_22
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 208
    :cond_23
    if-eqz p8, :cond_25

    .line 209
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v22       #oldFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 213
    :cond_24
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v29       #tempFie:Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 215
    move-object/from16 v20, v29

    .line 201
    .end local v22           #oldFile:Ljava/io/File;
    .end local v29           #tempFie:Ljava/io/File;
    :cond_25
    throw v4

    .end local v12           #os:Ljava/io/OutputStream;
    .end local v20           #newFile:Ljava/io/File;
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    .restart local v19       #i:I
    .restart local v21       #newFile:Ljava/io/File;
    .restart local v24       #os:Ljava/io/OutputStream;
    .restart local v26       #sample:I
    .restart local v30       #tmpPath:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v12, v24

    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .end local v21           #newFile:Ljava/io/File;
    .restart local v20       #newFile:Ljava/io/File;
    goto :goto_9

    .end local v19           #i:I
    .end local v30           #tmpPath:Ljava/lang/String;
    :catchall_2
    move-exception v4

    goto :goto_9

    .line 197
    .end local v12           #os:Ljava/io/OutputStream;
    .end local v20           #newFile:Ljava/io/File;
    .restart local v19       #i:I
    .restart local v21       #newFile:Ljava/io/File;
    .restart local v24       #os:Ljava/io/OutputStream;
    .restart local v30       #tmpPath:Ljava/lang/String;
    :catch_3
    move-exception v17

    move-object/from16 v12, v24

    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .end local v21           #newFile:Ljava/io/File;
    .restart local v20       #newFile:Ljava/io/File;
    goto/16 :goto_8

    .end local v19           #i:I
    .end local v30           #tmpPath:Ljava/lang/String;
    :catch_4
    move-exception v17

    goto/16 :goto_8

    .line 194
    .end local v12           #os:Ljava/io/OutputStream;
    .end local v20           #newFile:Ljava/io/File;
    .restart local v19       #i:I
    .restart local v21       #newFile:Ljava/io/File;
    .restart local v24       #os:Ljava/io/OutputStream;
    .restart local v30       #tmpPath:Ljava/lang/String;
    :catch_5
    move-exception v17

    move-object/from16 v12, v24

    .end local v24           #os:Ljava/io/OutputStream;
    .restart local v12       #os:Ljava/io/OutputStream;
    move-object/from16 v20, v21

    .end local v21           #newFile:Ljava/io/File;
    .restart local v20       #newFile:Ljava/io/File;
    goto/16 :goto_7

    .end local v19           #i:I
    .end local v30           #tmpPath:Ljava/lang/String;
    :catch_6
    move-exception v17

    goto/16 :goto_7
.end method

.method public setCurrentItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 49
    return-void
.end method

.method public setScanFile(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 263
    :try_start_0
    new-instance v2, Landroid/media/MediaScanner;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DetailsSaveFileHelper;->mContext:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 264
    .local v2, ms:Landroid/media/MediaScanner;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 265
    .local v0, dir:[Ljava/lang/String;
    const-string v3, "external"

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0           #dir:[Ljava/lang/String;
    .end local v2           #ms:Landroid/media/MediaScanner;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
