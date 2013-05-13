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
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    .line 98
    :cond_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .parameter "packageName"
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    .local v5, iStream:Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 22
    .local v7, time1:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/mtheme/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 24
    .local v9, zipFilePath:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v11, :cond_2

    .line 25
    iget-boolean v11, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    if-nez v11, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v10

    .line 28
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 32
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 33
    const-string v10, "framework-res"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 34
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mIsWaitingOpen:Z

    .line 37
    .end local v3           #file:Ljava/io/File;
    :cond_2
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v10, :cond_5

    .line 39
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, filePathNew:Ljava/lang/String;
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 47
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_4

    .line 48
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, temp:Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "res/drawable-sw400dp-xhdpi/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "res/drawable-xhdpi/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 63
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 64
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 67
    .end local v6           #temp:Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_5

    .line 68
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #filePathNew:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v10, v5

    .line 85
    goto/16 :goto_0

    .line 59
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #filePathNew:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "res/drawable-xhdpi/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    iget-object v10, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    .line 72
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #filePathNew:Ljava/lang/String;
    .end local v6           #temp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/util/zip/ZipException;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, delFile:Ljava/io/File;
    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 80
    .end local v0           #delFile:Ljava/io/File;
    .end local v1           #e:Ljava/util/zip/ZipException;
    :catchall_0
    move-exception v10

    throw v10

    .line 76
    :catch_1
    move-exception v10

    goto :goto_2

    .line 71
    :catch_2
    move-exception v10

    goto :goto_2
.end method
