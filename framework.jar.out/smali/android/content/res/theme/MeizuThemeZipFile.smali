.class public Landroid/content/res/theme/MeizuThemeZipFile;
.super Ljava/lang/Object;
.source "MeizuThemeZipFile.java"


# instance fields
.field private mIsWaitingOpen:Z

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    .line 80
    :cond_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .parameter "packageName"
    .parameter "filePath"

    .prologue
    const/4 v9, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    .local v5, iStream:Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 21
    .local v6, time1:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/mtheme/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 23
    .local v8, zipFilePath:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v10, :cond_2

    .line 24
    iget-boolean v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    if-nez v10, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v9

    .line 27
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 31
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 32
    const-string v9, "framework-res"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 33
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    .line 36
    .end local v3           #file:Ljava/io/File;
    :cond_2
    iget-object v9, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v9, :cond_4

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, filePathNew:Ljava/lang/String;
    iget-object v9, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 46
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_3

    .line 47
    iget-object v9, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 49
    :cond_3
    if-eqz v2, :cond_4

    .line 50
    iget-object v9, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #filePathNew:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object v9, v5

    .line 67
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/util/zip/ZipException;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, delFile:Ljava/io/File;
    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 62
    .end local v0           #delFile:Ljava/io/File;
    .end local v1           #e:Ljava/util/zip/ZipException;
    :catchall_0
    move-exception v9

    throw v9

    .line 58
    :catch_1
    move-exception v9

    goto :goto_1

    .line 53
    :catch_2
    move-exception v9

    goto :goto_1
.end method
