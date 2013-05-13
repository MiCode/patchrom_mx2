.class public Lcom/android/gallery3d/photoeditor/LoadScreennailTask;
.super Landroid/os/AsyncTask;
.source "LoadScreennailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final IMAGEVIEW_HEIGHT:I

.field private final IMAGEVIEW_WITH:I

.field private final callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09028c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_WITH:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_HEIGHT:I

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->doInBackground([Landroid/net/Uri;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)[Landroid/graphics/Bitmap;
    .locals 23
    .parameter "params"

    .prologue
    .line 68
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    .line 69
    .local v20, mbitMap:[Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 71
    .local v19, is:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 75
    if-eqz v19, :cond_0

    .line 77
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :cond_0
    :goto_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    if-nez v2, :cond_3

    .line 84
    const/16 v20, 0x0

    .line 129
    .end local v20           #mbitMap:[Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-object v20

    .line 78
    .restart local v20       #mbitMap:[Landroid/graphics/Bitmap;
    :catch_0
    move-exception v17

    .line 79
    .local v17, e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v17           #e:Ljava/io/IOException;
    :catch_1
    move-exception v17

    .line 73
    .local v17, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    aput-object v3, p1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v19, :cond_0

    .line 77
    :try_start_3
    throw v19
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v17

    .line 79
    .local v17, e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v17           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_2

    .line 77
    :try_start_4
    throw v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 80
    :cond_2
    :goto_2
    throw v2

    .line 78
    :catch_3
    move-exception v17

    .line 79
    .restart local v17       #e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v17           #e:Ljava/io/IOException;
    :cond_3
    const/4 v2, 0x0

    new-instance v3, Lcom/android/gallery3d/photoeditor/BitmapUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/photoeditor/BitmapUtils;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/16 v5, 0x500

    const/16 v6, 0x3c0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v20, v2

    .line 87
    const/16 v18, 0x0

    .line 89
    .local v18, i:I
    :goto_3
    const/4 v2, 0x0

    aget-object v2, v20, v2

    if-nez v2, :cond_4

    const/16 v2, 0x14

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 90
    const/4 v2, 0x0

    new-instance v3, Lcom/android/gallery3d/photoeditor/BitmapUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/photoeditor/BitmapUtils;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/16 v5, 0x500

    const/16 v6, 0x3c0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v20, v2

    .line 92
    const-wide/16 v2, 0xfa

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 96
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 93
    :catch_4
    move-exception v17

    .line 94
    .local v17, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 98
    .end local v17           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v2, 0x0

    aget-object v2, v20, v2

    if-nez v2, :cond_5

    .line 99
    const/16 v20, 0x0

    goto :goto_1

    .line 102
    :cond_5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 103
    .local v7, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_WITH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 104
    .local v21, scalex:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_HEIGHT:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v22, v2, v3

    .line 105
    .local v22, scaley:F
    cmpl-float v2, v21, v22

    if-lez v2, :cond_7

    .line 106
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 107
    const/4 v2, 0x0

    aget-object v2, v20, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v20, v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v20, v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 108
    .local v8, tempBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 109
    .local v16, bmpWidth:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 110
    .local v15, bmpHeight:I
    const/4 v9, 0x0

    .local v9, x:I
    const/4 v10, 0x0

    .line 111
    .local v10, y:I
    const/4 v11, 0x0

    .local v11, dstx:I
    const/4 v12, 0x0

    .line 113
    .local v12, dsty:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_HEIGHT:I

    mul-int v2, v2, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_WITH:I

    mul-int/2addr v3, v15

    if-ge v2, v3, :cond_8

    .line 114
    move/from16 v11, v16

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_HEIGHT:I

    mul-int v2, v2, v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_WITH:I

    div-int v12, v2, v3

    .line 116
    sub-int v2, v15, v12

    div-int/lit8 v10, v2, 0x2

    .line 122
    :goto_6
    const/4 v2, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v20, v2

    .line 123
    const/4 v2, 0x0

    aget-object v2, v20, v2

    if-eq v8, v2, :cond_6

    .line 124
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    :cond_6
    const/4 v2, 0x1

    aget-object v2, v20, v2

    if-nez v2, :cond_1

    .line 127
    const/16 v20, 0x0

    goto/16 :goto_1

    .end local v8           #tempBmp:Landroid/graphics/Bitmap;
    .end local v9           #x:I
    .end local v10           #y:I
    .end local v11           #dstx:I
    .end local v12           #dsty:I
    .end local v15           #bmpHeight:I
    .end local v16           #bmpWidth:I
    :cond_7
    move/from16 v21, v22

    .line 105
    goto :goto_5

    .line 118
    .restart local v8       #tempBmp:Landroid/graphics/Bitmap;
    .restart local v9       #x:I
    .restart local v10       #y:I
    .restart local v11       #dstx:I
    .restart local v12       #dsty:I
    .restart local v15       #bmpHeight:I
    .restart local v16       #bmpWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_WITH:I

    mul-int/2addr v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->IMAGEVIEW_HEIGHT:I

    div-int v11, v2, v3

    .line 119
    sub-int v2, v16, v11

    div-int/lit8 v9, v2, 0x2

    .line 120
    move v12, v15

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->onPostExecute([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute([Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 134
    if-nez p1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    const v2, 0x7f0a00cb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 136
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

    aget-object v2, p1, v3

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-interface {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;->onComplete(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
