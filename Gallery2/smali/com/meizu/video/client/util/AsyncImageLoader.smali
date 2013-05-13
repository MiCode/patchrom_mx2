.class public Lcom/meizu/video/client/util/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;,
        Lcom/meizu/video/client/util/AsyncImageLoader$CallBackEntity;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 29
    const-string v0, "AsyncImageLoader"

    iput-object v0, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->TAG:Ljava/lang/String;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/util/AsyncImageLoader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "fileWholeName"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    const/4 v2, 0x1

    .line 160
    .local v2, maxSampleSize:I
    :goto_0
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, p2

    mul-int/lit8 v5, v2, 0x2

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, p3

    mul-int/lit8 v5, v2, 0x2

    if-le v4, v5, :cond_1

    .line 161
    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 163
    :cond_1
    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 165
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    const/4 v1, -0x1

    .line 169
    .local v1, doType:I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    if-gt v4, p2, :cond_2

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    if-le v4, p3, :cond_3

    .line 170
    :cond_2
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v4, p3

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, p2

    if-ne v4, v5, :cond_5

    .line 171
    const/4 v1, 0x0

    .line 177
    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 178
    const/4 v4, 0x1

    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .end local v1           #doType:I
    .end local v2           #maxSampleSize:I
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :goto_2
    return-object v0

    .line 173
    .restart local v1       #doType:I
    .restart local v2       #maxSampleSize:I
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 179
    :cond_6
    if-ne v1, v6, :cond_4

    .line 180
    const/4 v4, 0x1

    invoke-static {v0, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 183
    .end local v1           #doType:I
    .end local v2           #maxSampleSize:I
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "position"
    .parameter "cid"
    .parameter "type"
    .parameter "imageUrl"
    .parameter "width"
    .parameter "height"
    .parameter "imageCallback"

    .prologue
    .line 37
    sget-object v1, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    if-eq p3, v1, :cond_2

    if-eqz p4, :cond_0

    const-string v1, ""

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imageUrl is null or length is 0!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v9, 0x0

    .line 82
    :cond_1
    :goto_0
    return-object v9

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->mImageCache:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->mImageCache:Ljava/util/HashMap;

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->mImageCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->mImageCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/SoftReference;

    .line 46
    .local v10, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 47
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 51
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_4
    new-instance v8, Lcom/meizu/video/client/util/AsyncImageLoader$1;

    move-object/from16 v0, p7

    invoke-direct {v8, p0, v0, p1}, Lcom/meizu/video/client/util/AsyncImageLoader$1;-><init>(Lcom/meizu/video/client/util/AsyncImageLoader;Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;I)V

    .line 58
    .local v8, handler:Landroid/os/Handler;
    iget-object v11, p0, Lcom/meizu/video/client/util/AsyncImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/meizu/video/client/util/AsyncImageLoader$2;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p3

    move-object v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader$2;-><init>(Lcom/meizu/video/client/util/AsyncImageLoader;Ljava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILandroid/os/Handler;)V

    invoke-interface {v11, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 82
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public loadImageFromUrl(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "url"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    const/4 v11, 0x0

    .line 88
    .local v11, i:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 93
    .local v3, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/meizu/video/client/util/CommonUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, fileName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/Video/OnlineImageCache/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, filePath:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 97
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 99
    new-instance v8, Ljava/io/File;

    .end local v8           #f:Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v8       #f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 101
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/meizu/video/client/util/AsyncImageLoader;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 109
    .end local v8           #f:Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 110
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v13, m:Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/io/InputStream;

    move-object v11, v0

    .line 112
    if-eqz v9, :cond_6

    .line 113
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 114
    new-instance v8, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v8       #f:Ljava/io/File;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 116
    .local v12, in:Ljava/io/DataInputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v14, out:Ljava/io/FileOutputStream;
    const/16 v15, 0x400

    new-array v4, v15, [B

    .line 118
    .local v4, buffer:[B
    const/4 v5, 0x0

    .line 119
    .local v5, byteread:I
    :goto_1
    invoke-virtual {v12, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_3

    .line 120
    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 136
    .end local v4           #buffer:[B
    .end local v5           #byteread:I
    .end local v8           #f:Ljava/io/File;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v12           #in:Ljava/io/DataInputStream;
    .end local v13           #m:Ljava/net/URL;
    .end local v14           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 137
    .local v7, e1:Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    if-eqz v11, :cond_1

    .line 143
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 149
    .end local v7           #e1:Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    return-object v3

    .line 104
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 138
    .end local v8           #f:Ljava/io/File;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 139
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    if-eqz v11, :cond_1

    .line 143
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 144
    :catch_2
    move-exception v6

    .line 145
    :goto_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 122
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #buffer:[B
    .restart local v5       #byteread:I
    .restart local v8       #f:Ljava/io/File;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v12       #in:Ljava/io/DataInputStream;
    .restart local v13       #m:Ljava/net/URL;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 123
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 125
    new-instance v8, Ljava/io/File;

    .end local v8           #f:Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v8       #f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 127
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/meizu/video/client/util/AsyncImageLoader;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v3

    .line 141
    .end local v4           #buffer:[B
    .end local v5           #byteread:I
    .end local v8           #f:Ljava/io/File;
    .end local v12           #in:Ljava/io/DataInputStream;
    .end local v13           #m:Ljava/net/URL;
    .end local v14           #out:Ljava/io/FileOutputStream;
    :cond_4
    :goto_4
    if-eqz v11, :cond_1

    .line 143
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 144
    :catch_3
    move-exception v6

    goto :goto_3

    .line 130
    .restart local v13       #m:Ljava/net/URL;
    :cond_5
    :try_start_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/meizu/video/client/util/AsyncImageLoader;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_4

    .line 133
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/meizu/video/client/util/AsyncImageLoader;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v3

    goto :goto_4

    .line 141
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v13           #m:Ljava/net/URL;
    :catchall_0
    move-exception v15

    if-eqz v11, :cond_7

    .line 143
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 141
    :cond_7
    :goto_5
    throw v15

    .line 144
    :catch_4
    move-exception v6

    .line 145
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 144
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #e1:Ljava/net/MalformedURLException;
    :catch_5
    move-exception v6

    goto/16 :goto_3
.end method
