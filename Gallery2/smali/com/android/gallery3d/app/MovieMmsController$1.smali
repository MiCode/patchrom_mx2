.class Lcom/android/gallery3d/app/MovieMmsController$1;
.super Landroid/os/Handler;
.source "MovieMmsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieMmsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieMmsController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieMmsController;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$000(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$100(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieMmsController;->access$000(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieMmsController;->mIsShowing:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieMmsController;->access$302(Lcom/android/gallery3d/app/MovieMmsController;Z)Z

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController$1;->this$0:Lcom/android/gallery3d/app/MovieMmsController;

    #getter for: Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsController;->access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->turnOffLed()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
