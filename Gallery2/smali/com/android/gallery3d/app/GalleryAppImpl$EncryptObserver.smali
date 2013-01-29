.class Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;
.super Landroid/database/ContentObserver;
.source "GalleryAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryAppImpl;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryAppImpl;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    .line 129
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->isLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v0

    sput-wide v0, Lcom/android/gallery3d/data/MediaObject;->sLockStateVersion:J

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl$EncryptObserver;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->fakeChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
