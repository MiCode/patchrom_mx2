.class public Lcom/android/camera/ThumbnailHolder;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;
    }
.end annotation


# static fields
.field private static sLastThumbnail:Lcom/android/camera/Thumbnail;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/android/camera/ThumbnailHolder;->cleanLastThumbnail()V

    return-void
.end method

.method private static declared-synchronized cleanLastThumbnail()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/android/camera/ThumbnailHolder;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/camera/ThumbnailHolder;->sLastThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;
    .locals 5
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 52
    const-class v2, Lcom/android/camera/ThumbnailHolder;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/camera/ThumbnailHolder;->sLastThumbnail:Lcom/android/camera/Thumbnail;

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    sget-object v0, Lcom/android/camera/ThumbnailHolder;->sLastThumbnail:Lcom/android/camera/Thumbnail;

    .line 55
    .local v0, t:Lcom/android/camera/Thumbnail;
    const/4 v3, 0x0

    sput-object v3, Lcom/android/camera/ThumbnailHolder;->sLastThumbnail:Lcom/android/camera/Thumbnail;

    .line 56
    invoke-virtual {v0}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    .end local v0           #t:Lcom/android/camera/Thumbnail;
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized keep(Lcom/android/camera/Thumbnail;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 69
    const-class v1, Lcom/android/camera/ThumbnailHolder;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/camera/ThumbnailHolder;->sLastThumbnail:Lcom/android/camera/Thumbnail;

    .line 70
    sget-object v0, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    sget-object v0, Lcom/android/camera/ThumbnailHolder$LazyHandlerHolder;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v1

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
