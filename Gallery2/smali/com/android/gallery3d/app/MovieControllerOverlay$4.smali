.class Lcom/android/gallery3d/app/MovieControllerOverlay$4;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v3, 0x3f6

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 876
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getIsSingleVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 884
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 885
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 889
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v1, v2, :cond_2

    .line 890
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$802(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 891
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPauseButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 893
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 894
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 895
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1200(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)V

    goto :goto_0

    .line 886
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$4;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 887
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
