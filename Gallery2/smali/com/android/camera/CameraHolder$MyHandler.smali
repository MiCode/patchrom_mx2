.class Lcom/android/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    #getter for: Lcom/android/camera/CameraHolder;->mCameraOpened:Z
    invoke-static {v0}, Lcom/android/camera/CameraHolder;->access$000(Lcom/android/camera/CameraHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 93
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
