.class Lcom/android/camera/CaptureDoneActivity$1;
.super Landroid/os/Handler;
.source "CaptureDoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureDoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureDoneActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureDoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/camera/CaptureDoneActivity$1;->this$0:Lcom/android/camera/CaptureDoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$1;->this$0:Lcom/android/camera/CaptureDoneActivity;

    #getter for: Lcom/android/camera/CaptureDoneActivity;->mCapturePicture:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/CaptureDoneActivity;->access$200(Lcom/android/camera/CaptureDoneActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CaptureDoneActivity$1;->this$0:Lcom/android/camera/CaptureDoneActivity;

    #getter for: Lcom/android/camera/CaptureDoneActivity;->mPicture:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/CaptureDoneActivity;->access$100(Lcom/android/camera/CaptureDoneActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    invoke-static {}, Lcom/android/camera/Util;->getCurAppMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$1;->this$0:Lcom/android/camera/CaptureDoneActivity;

    #getter for: Lcom/android/camera/CaptureDoneActivity;->mStartPlayVideoBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/CaptureDoneActivity;->access$300(Lcom/android/camera/CaptureDoneActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$1;->this$0:Lcom/android/camera/CaptureDoneActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CaptureDoneActivity;->setResult(I)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/CaptureDoneActivity$1;->this$0:Lcom/android/camera/CaptureDoneActivity;

    invoke-virtual {v0}, Lcom/android/camera/CaptureDoneActivity;->finish()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
