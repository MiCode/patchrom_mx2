.class public Landroid/content/res/theme/IconCustomHelper;
.super Ljava/lang/Object;
.source "IconCustomHelper.java"


# static fields
.field public static MEIZU_CALENDAI_ICON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/theme/IconCustomHelper;->MEIZU_CALENDAI_ICON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "backguard"
    .parameter "top"

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 74
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 76
    .local v9, newBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 77
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 81
    .local v10, w:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 83
    .local v7, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 84
    .local v11, w_2:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 87
    .local v8, h_2:I
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    new-instance v5, Landroid/graphics/Paint;

    .end local v5           #paint:Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 91
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

    .line 93
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 98
    return-object v9
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .parameter "dr"

    .prologue
    .line 207
    :try_start_0
    const-string v4, "IconCustomHelper"

    const-string v5, "day: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 209
    .local v12, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    .line 210
    .local v9, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 211
    .local v11, newBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v10, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v11, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 214
    .local v3, textPaint:Landroid/text/TextPaint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 215
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 216
    .local v14, sizePactor:I
    const/high16 v4, 0x4268

    int-to-float v5, v14

    mul-float/2addr v4, v5

    const/high16 v5, 0x42d4

    div-float v13, v4, v5

    .line 217
    .local v13, size:F
    invoke-virtual {v3, v13}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 218
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 219
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 220
    const v4, 0x1060088

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 223
    invoke-static {}, Landroid/content/res/theme/IconCustomHelper;->getDateOfMonth()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, date:Ljava/lang/String;
    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 227
    .local v1, sl:Landroid/text/StaticLayout;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x23

    div-int/lit8 v4, v4, 0x6a

    int-to-float v15, v4

    .line 228
    .local v15, tanslateY:F
    const/4 v4, 0x0

    invoke-virtual {v10, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 231
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v4

    .line 236
    .end local v1           #sl:Landroid/text/StaticLayout;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #textPaint:Landroid/text/TextPaint;
    .end local v9           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #newBitmap:Landroid/graphics/Bitmap;
    .end local v12           #resources:Landroid/content/res/Resources;
    .end local v13           #size:F
    .end local v14           #sizePactor:I
    .end local v15           #tanslateY:F
    .end local p0
    :goto_0
    return-object p0

    .line 232
    .restart local p0
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "dr"

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 252
    .local v15, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    .line 253
    .local v9, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 254
    .local v14, newBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v10, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 256
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 257
    .local v3, textPaint:Landroid/text/TextPaint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 258
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 259
    .local v17, sizePactor:I
    const/high16 v4, 0x41a4

    move/from16 v0, v17

    int-to-float v5, v0

    mul-float/2addr v4, v5

    const/high16 v5, 0x42d4

    div-float v16, v4, v5

    .line 260
    .local v16, size:F
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 263
    const v4, 0x1060087

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 264
    const/high16 v4, 0x4040

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const v7, 0x1060089

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 266
    invoke-static {}, Landroid/content/res/theme/IconCustomHelper;->getDayOfWeek()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, date:Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 270
    .local v11, currentConfig:Landroid/content/res/Configuration;
    iget-object v4, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 272
    .local v19, week:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, day:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1f

    div-int/lit8 v20, v4, 0x6a

    .line 274
    .local v20, weekX:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x36

    div-int/lit8 v13, v4, 0x6a

    .line 275
    .local v13, dayX:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1b

    div-int/lit8 v21, v4, 0x6a

    .line 276
    .local v21, y:I
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    int-to-float v4, v13

    move/from16 v0, v21

    int-to-float v5, v0

    invoke-virtual {v10, v12, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    .end local v12           #day:Ljava/lang/String;
    .end local v13           #dayX:I
    .end local v19           #week:Ljava/lang/String;
    .end local v20           #weekX:I
    .end local v21           #y:I
    :goto_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v15, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v4

    .line 291
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #textPaint:Landroid/text/TextPaint;
    .end local v9           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #currentConfig:Landroid/content/res/Configuration;
    .end local v14           #newBitmap:Landroid/graphics/Bitmap;
    .end local v15           #resources:Landroid/content/res/Resources;
    .end local v16           #size:F
    .end local v17           #sizePactor:I
    .end local p0
    :goto_1
    return-object p0

    .line 279
    .restart local v2       #date:Ljava/lang/String;
    .restart local v3       #textPaint:Landroid/text/TextPaint;
    .restart local v9       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10       #canvas:Landroid/graphics/Canvas;
    .restart local v11       #currentConfig:Landroid/content/res/Configuration;
    .restart local v14       #newBitmap:Landroid/graphics/Bitmap;
    .restart local v15       #resources:Landroid/content/res/Resources;
    .restart local v16       #size:F
    .restart local v17       #sizePactor:I
    .restart local p0
    :cond_0
    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 282
    .local v1, sl:Landroid/text/StaticLayout;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x6a

    int-to-float v0, v4

    move/from16 v18, v0

    .line 283
    .local v18, tanslateY:F
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    invoke-virtual {v1, v10}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v1           #sl:Landroid/text/StaticLayout;
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #textPaint:Landroid/text/TextPaint;
    .end local v9           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #currentConfig:Landroid/content/res/Configuration;
    .end local v14           #newBitmap:Landroid/graphics/Bitmap;
    .end local v15           #resources:Landroid/content/res/Resources;
    .end local v16           #size:F
    .end local v17           #sizePactor:I
    .end local v18           #tanslateY:F
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 139
    const-string v4, "com.android.calendar"

    .line 140
    .local v4, nameWithDate:Ljava/lang/String;
    const-string v3, "com.android.calendar.nodate"

    .line 141
    .local v3, nameNoDate:Ljava/lang/String;
    const/4 v0, 0x0

    .line 143
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {v3}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 157
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 147
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {v4}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-static {v0}, Landroid/content/res/theme/IconCustomHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/content/res/theme/IconCustomHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 157
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 154
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "packageName"

    .prologue
    .line 109
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 110
    .local v6, sysResources:Landroid/content/res/Resources;
    if-nez v6, :cond_1

    .line 111
    const/4 v1, 0x0

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 114
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

    .line 115
    .local v5, resPath:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/theme/MeizuThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 118
    .local v4, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 120
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 121
    :try_start_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
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

    .line 126
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 127
    .local v3, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
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

.method public static getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 296
    .local v2, today:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 297
    .local v1, cal:Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 298
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 299
    .local v0, aDate:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDayOfWeek()Ljava/lang/String;
    .locals 6

    .prologue
    .line 303
    const-string v0, ""

    .line 305
    .local v0, day:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10400c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 307
    .local v2, vSequence:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    .end local v2           #vSequence:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "IconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 386
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    move-object v1, p1

    .line 394
    :goto_0
    return-object v1

    .line 389
    :cond_0
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    .local v0, defIcon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 391
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1
    move-object v1, p1

    .line 392
    goto :goto_0

    .line 394
    :cond_1
    invoke-static {p0, p1}, Landroid/content/res/theme/IconCustomHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAddDateToIcon()Z
    .locals 4

    .prologue
    .line 167
    const-string v2, "com.android.calendar.nodate"

    .line 168
    .local v2, nameNoDate:Ljava/lang/String;
    const/4 v0, 0x0

    .line 170
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {v2}, Landroid/content/res/theme/IconCustomHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    const/4 v3, 0x0

    .line 177
    :goto_0
    return v3

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 188
    :try_start_0
    const-string v2, "/data/mtheme/icons"

    .line 189
    .local v2, zipFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const/4 v3, 0x1

    .line 196
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v3

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
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
    .line 39
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    .local v2, resultBmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/content/res/theme/IconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 47
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 48
    .local v3, x:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 50
    .local v4, y:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, p1, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    return-object v2
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "res"
    .parameter "srcDrawable"

    .prologue
    .line 322
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_0

    .line 345
    .end local p1
    :goto_0
    return-object p1

    .line 325
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 326
    .local v3, retDrawable:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 327
    .local v4, src:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconMask()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 328
    .local v1, maskBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconBackguard()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    .local v0, backguard:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 330
    invoke-static {v1, v4}, Landroid/content/res/theme/IconCustomHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 331
    .local v5, top:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 332
    invoke-static {v0, v5}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 333
    .local v2, resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v2           #resBmp:Landroid/graphics/Bitmap;
    .end local v5           #top:Landroid/graphics/Bitmap;
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object p1, v3

    .line 345
    goto :goto_0

    .line 335
    .restart local v5       #top:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 338
    .end local v5           #top:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v0, :cond_3

    .line 339
    invoke-static {v0, v4}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 340
    .restart local v2       #resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 341
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 342
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
    .line 354
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_0

    .line 377
    .end local p1
    :goto_0
    return-object p1

    .line 357
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 358
    .local v3, retDrawable:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 359
    .local v4, src:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getIconMask()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 360
    .local v1, maskBmp:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getShortcutBackguard()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    .local v0, backguard:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 362
    invoke-static {v1, v4}, Landroid/content/res/theme/IconCustomHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 363
    .local v5, top:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 364
    invoke-static {v0, v5}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 365
    .local v2, resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v2           #resBmp:Landroid/graphics/Bitmap;
    .end local v5           #top:Landroid/graphics/Bitmap;
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object p1, v3

    .line 377
    goto :goto_0

    .line 367
    .restart local v5       #top:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 370
    .end local v5           #top:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v0, :cond_3

    .line 371
    invoke-static {v0, v4}, Landroid/content/res/theme/IconCustomHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 372
    .restart local v2       #resBmp:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #retDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 373
    .restart local v3       #retDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 374
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

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 59
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 60
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 62
    .local v9, scaleWidht:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 63
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 64
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 66
    .local v7, newbmp:Landroid/graphics/Bitmap;
    return-object v7
.end method
