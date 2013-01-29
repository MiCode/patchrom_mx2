.class Lcom/android/camera/VideoFocusManager$MainHandler;
.super Landroid/os/Handler;
.source "VideoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoFocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/VideoFocusManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/VideoFocusManager$MainHandler;->this$0:Lcom/android/camera/VideoFocusManager;

    .line 140
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoFocusManager$MainHandler;->this$0:Lcom/android/camera/VideoFocusManager;

    #calls: Lcom/android/camera/VideoFocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/VideoFocusManager;->access$000(Lcom/android/camera/VideoFocusManager;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
