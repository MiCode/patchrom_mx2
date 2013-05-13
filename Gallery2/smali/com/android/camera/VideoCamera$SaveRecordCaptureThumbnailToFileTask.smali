.class Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;
.super Landroid/os/AsyncTask;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveRecordCaptureThumbnailToFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2452
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2452
    check-cast p1, [Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;->doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 2456
    array-length v2, p1

    .line 2457
    .local v2, n:I
    iget-object v3, p0, Lcom/android/camera/VideoCamera$SaveRecordCaptureThumbnailToFileTask;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v3}, Lcom/android/camera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2458
    .local v0, filesDir:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2459
    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    .line 2460
    aget-object v3, p1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;I)V

    .line 2458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2462
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
