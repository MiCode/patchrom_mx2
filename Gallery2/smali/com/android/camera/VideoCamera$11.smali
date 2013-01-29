.class Lcom/android/camera/VideoCamera$11;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2340
    iput-object p1, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2342
    new-instance v0, Lcom/android/camera/VideoCamera$GetThumbnailTask;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/VideoCamera$GetThumbnailTask;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoCamera$GetThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2343
    return-void
.end method
