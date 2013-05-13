.class Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;
.super Landroid/os/Handler;
.source "VideoGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoGestureListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoGestureListener;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/android/gallery3d/app/VideoGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    .line 131
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #getter for: Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGestureListener;->access$100(Lcom/android/gallery3d/app/VideoGestureListener;)Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #getter for: Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGestureListener;->access$000(Lcom/android/gallery3d/app/VideoGestureListener;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #calls: Lcom/android/gallery3d/app/VideoGestureListener;->dispatchLongPress()V
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGestureListener;->access$200(Lcom/android/gallery3d/app/VideoGestureListener;)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #getter for: Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGestureListener;->access$300(Lcom/android/gallery3d/app/VideoGestureListener;)Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #getter for: Lcom/android/gallery3d/app/VideoGestureListener;->mStillDown:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGestureListener;->access$400(Lcom/android/gallery3d/app/VideoGestureListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #getter for: Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/VideoGestureListener;->access$300(Lcom/android/gallery3d/app/VideoGestureListener;)Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;->this$0:Lcom/android/gallery3d/app/VideoGestureListener;

    #getter for: Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGestureListener;->access$000(Lcom/android/gallery3d/app/VideoGestureListener;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
