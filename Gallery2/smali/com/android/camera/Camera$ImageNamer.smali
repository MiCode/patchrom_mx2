.class Lcom/android/camera/Camera$ImageNamer;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageNamer"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mHeight:I

.field private mIsFlymeMmsIntent:Z

.field private mMultiFilePath:[Ljava/lang/String;

.field private mMultiTitle:[Ljava/lang/String;

.field private mMultiUri:[Landroid/net/Uri;

.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1751
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1746
    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiUri:[Landroid/net/Uri;

    .line 1747
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiTitle:[Ljava/lang/String;

    .line 1748
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiFilePath:[Ljava/lang/String;

    .line 1752
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageNamer;->start()V

    .line 1753
    return-void
.end method

.method private cleanOldUri()V
    .locals 2

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1879
    :goto_0
    return-void

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateFilePath(J)V
    .locals 5
    .parameter "dateTaken"

    .prologue
    .line 1838
    iput-wide p1, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    .line 1839
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1840
    iget-wide v2, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, title:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    .line 1842
    iget-object v2, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiTitle:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1844
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 1845
    iget-object v2, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiFilePath:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiTitle:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1841
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    .end local v0           #i:I
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private generateUri()V
    .locals 11

    .prologue
    .line 1853
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1854
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/16 v0, 0x9

    if-ge v9, v0, :cond_2

    .line 1856
    const/16 v0, 0x8

    if-ge v9, v0, :cond_0

    .line 1857
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiFilePath:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    .end local v8           #f:Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiUri:[Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/android/camera/Camera$ImageNamer;->mIsFlymeMmsIntent:Z

    iget-object v2, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiTitle:[Ljava/lang/String;

    aget-object v2, v2, v9

    iget-wide v3, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    add-int/lit8 v5, v9, 0x1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget v5, p0, Lcom/android/camera/Camera$ImageNamer;->mWidth:I

    iget v6, p0, Lcom/android/camera/Camera$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Storage;->newImage(Landroid/content/ContentResolver;ZLjava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v10, v9

    .line 1854
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1861
    .restart local v8       #f:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1862
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1869
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #f:Ljava/io/File;
    .end local v9           #i:I
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mTitle:Ljava/lang/String;

    .line 1870
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/android/camera/Camera$ImageNamer;->mIsFlymeMmsIntent:Z

    iget-object v2, p0, Lcom/android/camera/Camera$ImageNamer;->mTitle:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    iget v5, p0, Lcom/android/camera/Camera$ImageNamer;->mWidth:I

    iget v6, p0, Lcom/android/camera/Camera$ImageNamer;->mHeight:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Storage;->newImage(Landroid/content/ContentResolver;ZLjava/lang/String;JII)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1872
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 1832
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mStop:Z

    .line 1833
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    monitor-exit p0

    return-void

    .line 1832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiFilePath(J)[Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 1805
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera$ImageNamer;->generateFilePath(J)V

    .line 1806
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiFilePath:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiTitle()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1801
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiTitle:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiUri()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1797
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mMultiUri:[Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1793
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1777
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1779
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1780
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1786
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;

    .line 1787
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$ImageNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1788
    monitor-exit p0

    return-object v0

    .line 1777
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;JIIIZ)V
    .locals 3
    .parameter "resolver"
    .parameter "dateTaken"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "isFlymeMms"

    .prologue
    const/4 v2, 0x1

    .line 1758
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v1, p6, 0xb4

    if-eqz v1, :cond_0

    .line 1759
    move v0, p4

    .line 1760
    .local v0, tmp:I
    move p4, p5

    .line 1761
    move p5, v0

    .line 1763
    .end local v0           #tmp:I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z

    .line 1764
    iput-object p1, p0, Lcom/android/camera/Camera$ImageNamer;->mResolver:Landroid/content/ContentResolver;

    .line 1765
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1766
    iput-wide p2, p0, Lcom/android/camera/Camera$ImageNamer;->mDateTaken:J

    .line 1768
    :cond_1
    iput p4, p0, Lcom/android/camera/Camera$ImageNamer;->mWidth:I

    .line 1769
    iput p5, p0, Lcom/android/camera/Camera$ImageNamer;->mHeight:I

    .line 1770
    iput-boolean p7, p0, Lcom/android/camera/Camera$ImageNamer;->mIsFlymeMmsIntent:Z

    .line 1771
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    monitor-exit p0

    return-void

    .line 1758
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 1813
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 1827
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    monitor-exit p0

    return-void

    .line 1814
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1816
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1817
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1822
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageNamer;->cleanOldUri()V

    .line 1823
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageNamer;->generateUri()V

    .line 1824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageNamer;->mRequestPending:Z

    .line 1825
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1813
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
