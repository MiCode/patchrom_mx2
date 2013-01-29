.class public Lcom/android/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;
    }
.end annotation


# instance fields
.field private mCustomFolder:Lcom/android/gallery3d/data/CustomFolder;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mDefaultMainHandler:Landroid/os/Handler;

.field private mDlnaClient:Landroid/media/dlna/DlnaClient;

.field private mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

.field private mEncryptObserver:Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;

.field private mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

.field private mLock:Ljava/lang/Object;

.field private mRemoteDeviceId:Ljava/lang/String;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    .line 141
    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 146
    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mRemoteDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method public declared-synchronized getCustomFolder()Lcom/android/gallery3d/data/CustomFolder;
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mCustomFolder:Lcom/android/gallery3d/data/CustomFolder;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/gallery3d/data/CustomFolder;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/CustomFolder;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mCustomFolder:Lcom/android/gallery3d/data/CustomFolder;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mCustomFolder:Lcom/android/gallery3d/data/CustomFolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/DataManager;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDlnaClient()Landroid/media/dlna/DlnaClient;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    return-object v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;
    .locals 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    if-nez v1, :cond_2

    .line 107
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 115
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/gallery3d/data/DownloadCache;-><init>(Lcom/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    .line 117
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mRemoteDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/android/gallery3d/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->initialize(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDefaultMainHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;-><init>(Lcom/android/gallery3d/app/GalleryAppImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mEncryptObserver:Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mEncryptObserver:Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    new-instance v0, Landroid/media/dlna/DlnaClient;

    invoke-direct {v0, p0}, Landroid/media/dlna/DlnaClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDlnaClient:Landroid/media/dlna/DlnaClient;

    .line 67
    return-void
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mEncryptObserver:Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    iput-object v2, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mEncryptObserver:Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;

    .line 73
    iput-object v2, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDefaultMainHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public setRemoteDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mRemoteDeviceId:Ljava/lang/String;

    .line 152
    return-void
.end method
