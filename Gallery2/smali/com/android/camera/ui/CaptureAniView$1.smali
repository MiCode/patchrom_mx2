.class Lcom/android/camera/ui/CaptureAniView$1;
.super Landroid/os/Handler;
.source "CaptureAniView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CaptureAniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CaptureAniView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CaptureAniView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    #getter for: Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I
    invoke-static {v1}, Lcom/android/camera/ui/CaptureAniView;->access$000(Lcom/android/camera/ui/CaptureAniView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    #setter for: Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/CaptureAniView;->access$002(Lcom/android/camera/ui/CaptureAniView;I)I

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    #getter for: Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/camera/ui/CaptureAniView;->access$100(Lcom/android/camera/ui/CaptureAniView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    #getter for: Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I
    invoke-static {v1}, Lcom/android/camera/ui/CaptureAniView;->access$000(Lcom/android/camera/ui/CaptureAniView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureAniView;->access$210(Lcom/android/camera/ui/CaptureAniView;)I

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureAniView;->invalidate()V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    #getter for: Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I
    invoke-static {v1}, Lcom/android/camera/ui/CaptureAniView;->access$000(Lcom/android/camera/ui/CaptureAniView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    #setter for: Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/CaptureAniView;->access$002(Lcom/android/camera/ui/CaptureAniView;I)I

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    #getter for: Lcom/android/camera/ui/CaptureAniView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/camera/ui/CaptureAniView;->access$100(Lcom/android/camera/ui/CaptureAniView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    #getter for: Lcom/android/camera/ui/CaptureAniView;->mChangeStokeWidth:I
    invoke-static {v1}, Lcom/android/camera/ui/CaptureAniView;->access$000(Lcom/android/camera/ui/CaptureAniView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    invoke-static {v0}, Lcom/android/camera/ui/CaptureAniView;->access$210(Lcom/android/camera/ui/CaptureAniView;)I

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAniView$1;->this$0:Lcom/android/camera/ui/CaptureAniView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureAniView;->invalidate()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
