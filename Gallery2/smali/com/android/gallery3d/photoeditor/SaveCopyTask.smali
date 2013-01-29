.class public Lcom/android/gallery3d/photoeditor/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final albumName:Ljava/lang/String;

.field private final callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private dateTaken:J

.field private final saveFileName:Ljava/lang/String;

.field private saveFolderName:Ljava/lang/String;

.field private final saveToastTip:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUri"
    .parameter "callback"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->dateTaken:J

    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 74
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->dateTaken:J

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->EDITED_BUCKET_ID:I

    const-string v2, "Photo/Edited"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveToastTip:Ljava/lang/String;

    .line 78
    const-string v0, "Photo/Edited"

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->albumName:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    iget-wide v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->dateTaken:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private getSaveDirectory()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/io/File;

    .line 147
    .local v0, dir:[Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->albumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, directory:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v4

    .line 149
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 152
    :cond_0
    aget-object v2, v0, v4

    return-object v2
.end method

.method private insertContent(Ljava/io/File;II)Landroid/net/Uri;
    .locals 9
    .parameter "file"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 161
    .local v0, now:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "datetaken"

    iget-wide v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->dateTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v4, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v4, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string v4, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v4, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v4, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v4, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v4, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v8

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 179
    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/photoeditor/SaveCopyTask$1;

    invoke-direct {v4, p0, v3}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$1;-><init>(Lcom/android/gallery3d/photoeditor/SaveCopyTask;Landroid/content/ContentValues;)V

    invoke-direct {p0, v2, v4}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->querySource([Ljava/lang/String;Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 195
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private querySource([Ljava/lang/String;Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 125
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {p2, v6}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    if-eqz v6, :cond_1

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 132
    if-eqz v6, :cond_1

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 89
    aget-object v4, p1, v6

    if-nez v4, :cond_0

    .line 107
    :goto_0
    return-object v3

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->getSaveDirectory()Ljava/io/File;

    move-result-object v2

    .line 94
    .local v2, saveDirectory:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_3

    .line 95
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "Download"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .restart local v2       #saveDirectory:Ljava/io/File;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v5, 0x7f0a01a9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    .line 102
    :goto_1
    aget-object v0, p1, v6

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/gallery3d/photoeditor/BitmapUtils;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/photoeditor/BitmapUtils;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFileName:Ljava/lang/String;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v0, v2, v5, v6}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->insertContent(Ljava/io/File;II)Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 99
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 112
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0a00c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 115
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    const/16 v3, 0x5b

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 116
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 118
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 119
    return-void

    .line 112
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0a00c2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveToastTip:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
