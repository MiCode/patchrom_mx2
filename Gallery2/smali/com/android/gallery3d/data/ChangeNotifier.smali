.class public Lcom/android/gallery3d/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "set"
    .parameter "uri"
    .parameter "application"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 33
    invoke-interface {p3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 34
    return-void
.end method


# virtual methods
.method public isDirty()Z
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 50
    :cond_0
    return-void
.end method
