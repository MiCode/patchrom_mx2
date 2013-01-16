.class public Lcom/android/internal/backup/LocalTransport;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "LocalTransport.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final RESTORE_TOKEN:J = 0x1L

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataDir:Ljava/io/File;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 67
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 6
    .parameter "dirname"

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 154
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 155
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 156
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    invoke-direct {p0, v2}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 161
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "file"

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x400

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 335
    :goto_0
    return-object v7

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 320
    .local v2, digest:Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 321
    .local v4, in:Ljava/io/FileInputStream;
    new-array v1, v9, [B

    .line 324
    .local v1, buffer:[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 325
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, len:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 327
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 330
    .end local v6           #len:I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 331
    .end local v5           #in:Ljava/io/FileInputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v6       #len:I
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 335
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 330
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v6           #len:I
    .restart local v4       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 9
    .parameter "packageInfo"

    .prologue
    .line 167
    const-string v6, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearBackupData() pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v5, packageDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 171
    .local v2, fileset:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 172
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 173
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v1           #f:Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 177
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public finishBackup()I
    .locals 2

    .prologue
    .line 181
    const-string v0, "LocalTransport"

    const-string v1, "finishBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "LocalTransport"

    const-string v1, "finishRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Landroid/app/backup/RestoreSet;

    const-string v2, "Local disk image"

    const-string v3, "flash"

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 189
    .local v1, set:Landroid/app/backup/RestoreSet;
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/app/backup/RestoreSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 190
    .local v0, array:[Landroid/app/backup/RestoreSet;
    return-object v0
.end method

.method public getBackupFileList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, fileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, md5List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v12, packageDir:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 269
    .local v2, blobs:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 271
    const-string v13, "LocalTransport"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no backup files in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v5, 0x0

    .line 312
    :cond_0
    return-object v5

    .line 281
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v5, filesReturn:Ljava/util/ArrayList;
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 284
    :cond_2
    move-object v1, v2

    .local v1, arr$:[Ljava/io/File;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v3, v1, v7

    .line 285
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 290
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #f:Ljava/io/File;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_3
    move-object v1, v2

    .restart local v1       #arr$:[Ljava/io/File;
    array-length v9, v1

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v3, v1, v7

    .line 291
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, fileName:Ljava/lang/String;
    const/4 v8, -0x1

    .line 293
    .local v8, indexFind:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_5

    .line 295
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 296
    move v8, v6

    .line 297
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/backup/LocalTransport;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 298
    .local v10, md5:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 299
    .local v11, md5Saved:Ljava/lang/String;
    if-eqz v11, :cond_4

    if-eqz v10, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 300
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v13, "LocalTransport"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " changed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v10           #md5:Ljava/lang/String;
    .end local v11           #md5Saved:Ljava/lang/String;
    :cond_5
    const/4 v13, -0x1

    if-ne v8, v13, :cond_6

    .line 308
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 293
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 195
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 15
    .parameter "outFd"

    .prologue
    .line 220
    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "startRestore not called"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 221
    :cond_0
    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v12, :cond_1

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "nextRestorePackage not called"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 222
    :cond_1
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v13, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v14, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v13, v13, v14

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v10, packageDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 227
    .local v1, blobs:[Ljava/io/File;
    if-nez v1, :cond_2

    .line 228
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error listing directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v12, 0x1

    .line 253
    :goto_0
    return v12

    .line 233
    :cond_2
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  getRestoreData() found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " key files"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v9, Landroid/app/backup/BackupDataOutput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 236
    .local v9, out:Landroid/app/backup/BackupDataOutput;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    :try_start_0
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v4, v0, v5

    .line 237
    .local v4, f:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v6, in:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v11, v12

    .line 240
    .local v11, size:I
    new-array v2, v11, [B

    .line 241
    .local v2, buf:[B
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 242
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>([B)V

    .line 243
    .local v7, key:Ljava/lang/String;
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    ... key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v9, v7, v11}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 245
    invoke-virtual {v9, v2, v11}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 247
    .end local v2           #buf:[B
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #size:I
    :catchall_0
    move-exception v12

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    .end local v4           #f:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #in:Ljava/io/FileInputStream;
    .end local v8           #len$:I
    :catch_0
    move-exception v3

    .line 252
    .local v3, e:Ljava/io/IOException;
    const-string v12, "LocalTransport"

    const-string v13, "Unable to read backup records"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 250
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public getRestoreDatas(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I
    .locals 15
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, fileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, fds:Ljava/util/List;,"Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v10, packageDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 344
    .local v1, blobs:[Ljava/io/File;
    if-nez v1, :cond_0

    .line 346
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error listing directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v12, 0x1

    .line 374
    :goto_0
    return v12

    .line 353
    :cond_0
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  getRestoreDatas() found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " key files"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    .line 358
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 359
    .local v6, fileName:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 360
    .local v4, fd:Landroid/os/ParcelFileDescriptor;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    .local v5, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 362
    .local v8, in:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 363
    .local v9, out:Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 364
    .local v11, size:I
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 365
    .local v2, buf:[B
    :goto_2
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-ltz v11, :cond_1

    .line 366
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 372
    .end local v2           #buf:[B
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v8           #in:Ljava/io/FileInputStream;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v11           #size:I
    :catch_0
    move-exception v3

    .line 373
    .local v3, e:Ljava/io/IOException;
    const-string v12, "LocalTransport"

    const-string v13, "Unable to read backup records"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/4 v12, 0x1

    goto :goto_0

    .line 368
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #buf:[B
    .restart local v4       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #fileName:Ljava/lang/String;
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v11       #size:I
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 369
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 371
    .end local v2           #buf:[B
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v8           #in:Ljava/io/FileInputStream;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v11           #size:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public initializeDevice()I
    .locals 2

    .prologue
    .line 89
    const-string v0, "LocalTransport"

    const-string v1, "wiping all data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public nextRestorePackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "startRestore not called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    iget v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v1, v1, v2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 209
    .local v0, name:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string v1, "LocalTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  nextRestorePackage() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 215
    :cond_1
    const-string v1, "LocalTransport"

    const-string v2, "  no more packages to restore"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, ""

    goto :goto_0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .parameter "packageInfo"
    .parameter "data"

    .prologue
    .line 95
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "performBackup() pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v9, packageDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 104
    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 106
    .local v3, changeSet:Landroid/app/backup/BackupDataInput;
    const/16 v2, 0x200

    .line 107
    .local v2, bufSize:I
    :try_start_0
    new-array v1, v2, [B

    .line 108
    .local v1, buf:[B
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 109
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, key:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 111
    .local v0, base64Key:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v7, entityFile:Ljava/io/File;
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 115
    .local v4, dataSize:I
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got change set key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key64="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-ltz v4, :cond_2

    .line 119
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 120
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 122
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v6, entity:Ljava/io/FileOutputStream;
    if-le v4, v2, :cond_1

    .line 125
    move v2, v4

    .line 126
    new-array v1, v2, [B

    .line 128
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 129
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  data size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v0           #base64Key:Ljava/lang/String;
    .end local v1           #buf:[B
    .end local v4           #dataSize:I
    .end local v6           #entity:Ljava/io/FileOutputStream;
    .end local v7           #entityFile:Ljava/io/File;
    .end local v8           #key:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 146
    .local v5, e:Ljava/io/IOException;
    const-string v10, "LocalTransport"

    const-string v11, "Exception reading backup input:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v10, 0x1

    .end local v5           #e:Ljava/io/IOException;
    :goto_1
    return v10

    .line 133
    .restart local v0       #base64Key:Ljava/lang/String;
    .restart local v1       #buf:[B
    .restart local v4       #dataSize:I
    .restart local v6       #entity:Ljava/io/FileOutputStream;
    .restart local v7       #entityFile:Ljava/io/File;
    .restart local v8       #key:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 134
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_3
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update key file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    const/4 v10, 0x1

    .line 137
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v10

    .line 140
    .end local v6           #entity:Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 143
    .end local v0           #base64Key:Ljava/lang/String;
    .end local v4           #dataSize:I
    .end local v7           #entityFile:Ljava/io/File;
    .end local v8           #key:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public putBackupDatas(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I
    .locals 15
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, fileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, fds:Ljava/util/List;,"Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .local v10, packageDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 381
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 384
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 385
    .local v1, blobs:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 387
    const-string v12, "LocalTransport"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error listing directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v12, 0x1

    .line 417
    :goto_0
    return v12

    .line 392
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 393
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 394
    .local v6, fileName:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 395
    .local v4, fd:Landroid/os/ParcelFileDescriptor;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 397
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 401
    :goto_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 402
    .local v8, in:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 403
    .local v9, out:Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 404
    .local v11, size:I
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 405
    .local v2, buf:[B
    :goto_3
    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-ltz v11, :cond_3

    .line 406
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 411
    .end local v2           #buf:[B
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v8           #in:Ljava/io/FileInputStream;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v11           #size:I
    :catch_0
    move-exception v3

    .line 413
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    const/4 v12, 0x1

    goto :goto_0

    .line 399
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #fileName:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    goto :goto_2

    .line 408
    .restart local v2       #buf:[B
    .restart local v8       #in:Ljava/io/FileInputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    .restart local v11       #size:I
    :cond_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 409
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 417
    .end local v2           #buf:[B
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v8           #in:Ljava/io/FileInputStream;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v11           #size:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .parameter "token"
    .parameter "packages"

    .prologue
    .line 199
    const-string v0, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
