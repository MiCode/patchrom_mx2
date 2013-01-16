.class public Landroid/content/res/theme/MeizuThemeResource;
.super Ljava/lang/Object;
.source "MeizuThemeResource.java"


# instance fields
.field private mColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/theme/MeizuThemeColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/theme/MeizuThemeDimensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingLoad:Z

.field private mOwner:Landroid/content/res/Resources;

.field private mPackageName:Ljava/lang/String;

.field private mXmlhandler:Landroid/content/res/theme/MeizuThemeXmlHelper;

.field private mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "packageName"
    .parameter "resources"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mDimensions:Ljava/util/Map;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    .line 36
    iput-object p1, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-direct {v0}, Landroid/content/res/theme/MeizuThemeZipManager;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    .line 38
    new-instance v0, Landroid/content/res/theme/MeizuThemeXmlHelper;

    invoke-direct {v0, p0}, Landroid/content/res/theme/MeizuThemeXmlHelper;-><init>(Landroid/content/res/theme/MeizuThemeResource;)V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mXmlhandler:Landroid/content/res/theme/MeizuThemeXmlHelper;

    .line 39
    iput-object p2, p0, Landroid/content/res/theme/MeizuThemeResource;->mOwner:Landroid/content/res/Resources;

    .line 41
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/theme/MeizuThemeZipManager;->setSystemThemeManager(Landroid/content/res/theme/MeizuThemeZipManager;)V

    .line 42
    invoke-virtual {p0}, Landroid/content/res/theme/MeizuThemeResource;->load()V

    .line 43
    return-void
.end method

.method public static get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "resPath"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, iStream:Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v1

    .line 143
    .local v1, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1, p0}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public static getDefaultActivityIcon()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 208
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 209
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 210
    const-string v2, "def_icon.png"

    .line 211
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 214
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 216
    if-eqz v1, :cond_1

    .line 217
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    :goto_0
    return-object v3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIconBackguard()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 170
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 171
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 172
    const-string v2, "icon_background.png"

    .line 173
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 176
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 178
    if-eqz v1, :cond_1

    .line 179
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    return-object v3

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIconMask()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 152
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 153
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 154
    const-string v2, "icon_mask.png"

    .line 155
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 157
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 159
    if-eqz v1, :cond_1

    .line 160
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_1
    :goto_0
    return-object v3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShortcutBackguard()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 189
    .local v3, retBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v4

    .line 190
    .local v4, sysZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v4, :cond_0

    .line 191
    const-string/jumbo v2, "shortcut_background.png"

    .line 192
    .local v2, resPath:Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 195
    .end local v2           #resPath:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 197
    if-eqz v1, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_0
    return-object v3

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeResource()Landroid/content/res/theme/MeizuThemeResource;

    move-result-object v0

    .line 47
    .local v0, sysThemeResource:Landroid/content/res/theme/MeizuThemeResource;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, v0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    .line 50
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseColorsFromXml(Ljava/io/InputStream;)V
    .locals 12
    .parameter "is"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 62
    .local v4, time1:J
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 63
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 64
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 66
    .local v1, reader:Lorg/xml/sax/XMLReader;
    iget-object v8, p0, Landroid/content/res/theme/MeizuThemeResource;->mXmlhandler:Landroid/content/res/theme/MeizuThemeXmlHelper;

    invoke-interface {v1, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 67
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 70
    .local v6, time2:J
    const-string v8, "MeizuTheme"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseColorsFromXml time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v6, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 72
    .end local v1           #reader:Lorg/xml/sax/XMLReader;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #time1:J
    .end local v6           #time2:J
    :catch_0
    move-exception v8

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    const-string v8, "MeizuTheme"

    const-string/jumbo v9, "themeValueParser"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MeizuTheme"

    const-string/jumbo v9, "themeValueParser"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addColorValue(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "data"
    .parameter "pkgTag"

    .prologue
    .line 89
    new-instance v0, Landroid/content/res/theme/MeizuThemeColorInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/content/res/theme/MeizuThemeColorInfo;-><init>(JLjava/lang/String;)V

    .line 90
    .local v0, value:Landroid/content/res/theme/MeizuThemeColorInfo;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public addDimensionValue(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "data"
    .parameter "pkgTag"

    .prologue
    .line 101
    new-instance v0, Landroid/content/res/theme/MeizuThemeDimensionInfo;

    invoke-direct {v0, p2, p3}, Landroid/content/res/theme/MeizuThemeDimensionInfo;-><init>(ILjava/lang/String;)V

    .line 102
    .local v0, value:Landroid/content/res/theme/MeizuThemeDimensionInfo;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mDimensions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor(Ljava/lang/String;Z)Landroid/content/res/theme/MeizuThemeColorInfo;
    .locals 6
    .parameter "colorName"
    .parameter "isFramework"

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-boolean v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/content/res/theme/MeizuThemeResource;->load()V

    .line 246
    :cond_0
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 247
    :cond_1
    const/4 v1, 0x0

    .line 256
    :cond_2
    :goto_0
    return-object v1

    .line 248
    :cond_3
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/theme/MeizuThemeColorInfo;

    .line 249
    .local v1, retColorInfo:Landroid/content/res/theme/MeizuThemeColorInfo;
    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 250
    .local v0, isIntoFramework:Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 251
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getThemeResource()Landroid/content/res/theme/MeizuThemeResource;

    move-result-object v2

    .line 252
    .local v2, themeResource:Landroid/content/res/theme/MeizuThemeResource;
    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {v2, p1, v3}, Landroid/content/res/theme/MeizuThemeResource;->getThemeColor(Ljava/lang/String;Z)Landroid/content/res/theme/MeizuThemeColorInfo;

    move-result-object v1

    goto :goto_0

    .end local v0           #isIntoFramework:Z
    .end local v2           #themeResource:Landroid/content/res/theme/MeizuThemeResource;
    :cond_4
    move v0, v3

    .line 249
    goto :goto_1
.end method

.method public getThemeFileStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"
    .parameter "isFramework"

    .prologue
    .line 225
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mOwner:Landroid/content/res/Resources;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 227
    .local v1, iStream:Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-virtual {v3, p1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_2
    if-eqz p2, :cond_3

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework-res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 232
    if-nez v1, :cond_0

    .line 233
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v2

    .line 234
    .local v2, sysThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    if-eqz v2, :cond_0

    .line 235
    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 238
    .end local v0           #filePath:Ljava/lang/String;
    .end local v2           #sysThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;
    :cond_3
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, is:Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    const-string/jumbo v2, "theme_values.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 134
    :goto_1
    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0, v0}, Landroid/content/res/theme/MeizuThemeResource;->parseColorsFromXml(Ljava/io/InputStream;)V

    .line 137
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    iget-object v2, p0, Landroid/content/res/theme/MeizuThemeResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "theme_values.xml"

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/MeizuThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-virtual {v0}, Landroid/content/res/theme/MeizuThemeZipManager;->clean()V

    .line 116
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    invoke-static {}, Landroid/content/res/theme/MeizuThemeResource;->getSystemThemeManager()Landroid/content/res/theme/MeizuThemeZipManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/theme/MeizuThemeZipManager;->setSystemThemeManager(Landroid/content/res/theme/MeizuThemeZipManager;)V

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mColors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeResource;->mIsWaitingLoad:Z

    .line 120
    return-void
.end method
