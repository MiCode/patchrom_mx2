.class public Landroid/content/res/theme/IconCustomHelper;
.super Ljava/lang/Object;
.source "IconCustomHelper.java"


# static fields
.field public static MEIZU_CALENDAI_ICON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/theme/IconCustomHelper;->MEIZU_CALENDAI_ICON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "backguard"
    .parameter "top"

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 60
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 62
    .local v9, newBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 63
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 67
    .local v10, w:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 69
    .local v7, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 70
    .local v11, w_2:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 73
    .local v8, h_2:I
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    new-instance v5, Landroid/graphics/Paint;

    .end local v5           #paint:Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .restart local v5       #paint:Landroid/graphics/Paint;
    sub-int v1, v10, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 84
    return-object v9
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "dr"

    .prologue
    .line 192
    return-object p0
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 125
    const-string v4, "com.android.calendar"

    .line 126
    .local v4, nameWithDate:Ljava/lang/String;
    const-string v3, "com.android.calendar.nodate"

    .line 127
    .local v3, nameNoDate:Ljava/lang/String;
    const/4 v0, 0x0

    .line 129
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {v3}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 142
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 133
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {v4}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-static {v0}, Landroid/content/res/theme/IconCustomHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 142
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 139
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "packageName"

    .prologue
    .line 95
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 96
    .local v6, sysResources:Landroid/content/res/Resources;
    if-nez v6, :cond_1

    .line 97
    const/4 v1, 0x0

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, resPath:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/theme/MeizuThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 104
    .local v4, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 106
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 107
    :try_start_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 112
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 113
    .local v3, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 265
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 273
    :goto_0
    return-object v1

    .line 268
    :cond_0
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    .local v0, defIcon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 270
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1
    move-object v1, p1

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    invoke-static {p0, p1}, Landroid/content/res/theme/IconCustomHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAddDateToIcon()Z
    .locals 4

    .prologue
    .line 152
    const-string v2, "com.android.calendar.nodate"

    .line 153
    .local v2, nameNoDate:Ljava/lang/String;
    const/4 v0, 0x0

    .line 155
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {v2}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    const/4 v3, 0x0

    .line 162
    :goto_0
    return v3

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 173
    :try_start_0
    const-string v2, "/data/mtheme/icons"

    .line 174
    .local v2, zipFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const/4 v3, 0x1

    .line 181
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "maskBmp"
    .parameter "viewBmp"

    .prologue
    .line 25
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 26
    .local v2, resultBmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 30
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/content/res/theme/IconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 33
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 34
    .local v3, x:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 36
    .local v4, y:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, p1, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 39
    return-object v2
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 201
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_0

    .line 224
    .end local p1
    :goto_0
    return-object p1

    .line 204
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 205
    .local v3, retDrawable:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 206
    .local v4, src:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconMask()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    .local v1, maskBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconBackguard()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, backguard:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 209
    invoke-static {v1, v4}, Landroid/content/res/theme/IconCustomHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 210
    .local v5, top:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 211
    invoke-static {v0, v5}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    .local v2, resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v2           #resBmp:Landroid/graphics/Bitmap;
    .end local v5           #top:Landroid/graphics/Bitmap;
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object p1, v3

    .line 224
    goto :goto_0

    .line 214
    .restart local v5       #top:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 217
    .end local v5           #top:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v0, :cond_3

    .line 218
    invoke-static {v0, v4}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 219
    .restart local v2       #resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 220
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 221
    .end local v2           #resBmp:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static makeThemeShortcut(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 233
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_0

    .line 256
    .end local p1
    :goto_0
    return-object p1

    .line 236
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 237
    .local v3, retDrawable:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 238
    .local v4, src:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconMask()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 239
    .local v1, maskBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getShortcutBackguard()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, backguard:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 241
    invoke-static {v1, v4}, Landroid/content/res/theme/IconCustomHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 242
    .local v5, top:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 243
    invoke-static {v0, v5}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    .local v2, resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v2           #resBmp:Landroid/graphics/Bitmap;
    .end local v5           #top:Landroid/graphics/Bitmap;
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object p1, v3

    .line 256
    goto :goto_0

    .line 246
    .restart local v5       #top:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 249
    .end local v5           #top:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v0, :cond_3

    .line 250
    invoke-static {v0, v4}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 251
    .restart local v2       #resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 252
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 253
    .end local v2           #resBmp:Landroid/graphics/Bitmap;
    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 45
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 46
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 48
    .local v9, scaleWidht:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 49
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 50
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 52
    .local v7, newbmp:Landroid/graphics/Bitmap;
    return-object v7
.end method
