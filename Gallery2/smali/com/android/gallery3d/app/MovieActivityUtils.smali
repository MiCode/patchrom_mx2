.class public Lcom/android/gallery3d/app/MovieActivityUtils;
.super Ljava/lang/Object;
.source "MovieActivityUtils.java"


# static fields
.field public static sFileName:Ljava/lang/String;

.field public static sFilePath:Ljava/lang/String;

.field public static sFindCount:I

.field public static sIsFromFile:Z

.field public static sLedPower:Landroid/os/IPowerManager;

.field public static sVidoeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sFindCount:I

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sLedPower:Landroid/os/IPowerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFilePathInDir(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "dir"
    .parameter "suffix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    .local p2, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, file:Ljava/io/File;
    const-string v2, ""

    .line 174
    .local v2, fileName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 175
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 177
    .restart local v2       #fileName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, fileNames:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 180
    new-instance v0, Ljava/io/File;

    aget-object v5, v3, v4

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eq v5, p1, :cond_1

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    .end local v0           #f:Ljava/io/File;
    .end local v3           #fileNames:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method public static findSubTitleFromUri(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, timeText:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, timeTextType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 120
    sget v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFindCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFindCount:I

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, videoPath:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v4, timeTextPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, scheme:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 125
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 142
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 169
    :cond_0
    return-void

    .line 127
    :cond_1
    const-string v6, "file"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    sget v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFindCount:I

    if-gtz v6, :cond_2

    .line 129
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    .line 131
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 132
    :cond_3
    const-string v6, "content"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    sput-boolean v8, Lcom/android/gallery3d/app/MovieActivityUtils;->sIsFromFile:Z

    .line 134
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.email"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 137
    invoke-static {p0, p3}, Lcom/android/gallery3d/app/MovieActivityUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 145
    :cond_4
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_6

    .line 146
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFileName:Ljava/lang/String;

    .line 147
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sVidoeName:Ljava/lang/String;

    .line 148
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFilePath:Ljava/lang/String;

    .line 155
    :goto_1
    :try_start_0
    sget-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFilePath:Ljava/lang/String;

    const-string v7, "srt"

    invoke-static {v6, v7, v4}, Lcom/android/gallery3d/app/MovieActivityUtils;->findFilePathInDir(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 160
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/android/gallery3d/app/MovieActivityUtils;->sFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFileName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v3           #str:Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 150
    .end local v1           #i:I
    :cond_6
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFileName:Ljava/lang/String;

    .line 151
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sVidoeName:Ljava/lang/String;

    .line 152
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/gallery3d/app/MovieActivityUtils;->sFilePath:Ljava/lang/String;

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static findVideoTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 82
    if-nez p1, :cond_0

    move-object v3, v5

    .line 116
    :goto_0
    return-object v3

    .line 85
    :cond_0
    const/4 v4, 0x0

    .line 86
    .local v4, videoPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, scheme:Ljava/lang/String;
    const/4 v3, 0x0

    .line 88
    .local v3, videoName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 99
    :goto_1
    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    move-object v3, v5

    .line 100
    goto :goto_0

    .line 91
    :cond_2
    const-string v6, "file"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 93
    :cond_3
    const-string v6, "content"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/MovieActivityUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v3, v5

    .line 96
    goto :goto_0

    .line 102
    :cond_5
    const/4 v1, 0x0

    .line 103
    .local v1, subStringBegin:I
    const/4 v2, 0x0

    .line 104
    .local v2, subStringEnd:I
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_6

    .line 105
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 106
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 111
    :goto_2
    if-ge v1, v2, :cond_7

    .line 112
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 108
    :cond_6
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 109
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 114
    :cond_7
    const v5, 0x7f0a01e2

    invoke-static {p0, v5}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getAppScreenBrightness(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    const/4 v0, -0x1

    .line 264
    if-nez p0, :cond_0

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    const-string v1, "video-light"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, brightness:I
    goto :goto_0
.end method

.method public static getCurScreenBrightness()I
    .locals 4

    .prologue
    const/16 v2, 0xff

    .line 251
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 253
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v1}, Landroid/os/IPowerManager;->getSettingsBrightnessMeizu()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, doe:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 202
    const/4 v7, 0x0

    .line 203
    .local v7, str:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    .local v2, proj:[Ljava/lang/String;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 212
    :cond_0
    if-eqz v6, :cond_1

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    return-object v7

    .line 212
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 48
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 55
    const v1, 0x7f050008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 56
    .local v0, alpha_ani:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    return-void
.end method

.method public static isAlmostEqual(DD)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 298
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 197
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static roundingLevel(DI)D
    .locals 3
    .parameter "level"
    .parameter "newScale"

    .prologue
    .line 293
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 294
    .local v0, b:Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static saveAppScreenBrightness(Landroid/content/SharedPreferences;I)V
    .locals 2
    .parameter "pref"
    .parameter "brightness"

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video-light"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveNativeCompleteMode(Landroid/content/SharedPreferences;I)V
    .locals 2
    .parameter "pref"
    .parameter "complete"

    .prologue
    .line 305
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "native-complete-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    return-void
.end method

.method public static saveOnLineCompleteMode(Landroid/content/SharedPreferences;I)V
    .locals 2
    .parameter "pref"
    .parameter "complete"

    .prologue
    .line 308
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "online-complete-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void
.end method

.method public static saveQueuePlay(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "pref"
    .parameter "isqueue"

    .prologue
    .line 311
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    return-void
.end method

.method public static saveReplay(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "pref"
    .parameter "isreplay"

    .prologue
    .line 314
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "replay-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    return-void
.end method

.method public static saveScreenSensor(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "pref"
    .parameter "isScreenHor"

    .prologue
    .line 302
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screen-sensor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method

.method public static setHomeButtonBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 235
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sLedPower:Landroid/os/IPowerManager;

    if-nez v0, :cond_0

    .line 236
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sLedPower:Landroid/os/IPowerManager;

    .line 239
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sLedPower:Landroid/os/IPowerManager;

    if-eqz v0, :cond_2

    .line 240
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    .line 241
    const/16 p0, 0xff

    .line 243
    :cond_1
    sget-object v0, Lcom/android/gallery3d/app/MovieActivityUtils;->sLedPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p0}, Landroid/os/IPowerManager;->setButtonlightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_2
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setWinBrightness(Landroid/view/Window;I)V
    .locals 4
    .parameter "win"
    .parameter "brightness"

    .prologue
    .line 220
    if-eqz p0, :cond_2

    .line 221
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 222
    const/16 p1, 0xff

    .line 224
    :cond_0
    if-gez p1, :cond_1

    .line 225
    const/4 p1, 0x0

    .line 227
    :cond_1
    int-to-float v2, p1

    const/high16 v3, 0x437f

    div-float v0, v2, v3

    .line 228
    .local v0, brightnessRatio:F
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 229
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 230
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 232
    .end local v0           #brightnessRatio:F
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method public static showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 60
    const v1, 0x7f05000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 61
    .local v0, alpha_ani:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    return-void
.end method

.method public static showViewTranslateAniDown(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 68
    const v1, 0x7f05000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 69
    .local v0, alpha_ani:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    return-void
.end method

.method public static showViewTranslateAniUp(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    .line 64
    const v1, 0x7f05000d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 65
    .local v0, alpha_ani:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    return-void
.end method
