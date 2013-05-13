.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 570
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/16 v2, -0x3f8

    if-ne p3, v2, :cond_1

    .line 573
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mbForceNuPlayer:Z
    invoke-static {v2}, Landroid/widget/VideoView;->access$2400(Landroid/widget/VideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 574
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mbForceNuPlayer:Z
    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$2402(Landroid/widget/VideoView;Z)Z

    .line 575
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v2}, Landroid/widget/VideoView;->access$2500(Landroid/widget/VideoView;)V

    .line 647
    :cond_0
    :goto_0
    return v5

    .line 580
    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$602(Landroid/widget/VideoView;I)I

    .line 581
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;I)I

    .line 582
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 583
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 587
    :cond_2
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 588
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    :cond_3
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 601
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_4

    .line 602
    const v0, 0x1040015

    .line 606
    .local v0, messageId:I
    :goto_1
    const v1, 0x1030323

    .line 607
    .local v1, themId:I
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/VideoView;->access$2800(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    #setter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$2702(Landroid/widget/VideoView;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 608
    const/16 v2, -0x3ed

    if-lt p3, v2, :cond_5

    const/16 v2, -0x3e9

    if-gt p3, v2, :cond_5

    .line 610
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104040c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 614
    :goto_2
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 615
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040010

    new-instance v4, Landroid/widget/VideoView$6$1;

    invoke-direct {v4, p0}, Landroid/widget/VideoView$6$1;-><init>(Landroid/widget/VideoView$6;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 632
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/widget/VideoView$6$2;

    invoke-direct {v3, p0}, Landroid/widget/VideoView$6$2;-><init>(Landroid/widget/VideoView$6;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mIsDialogShowing:Z
    invoke-static {v2}, Landroid/widget/VideoView;->access$2900(Landroid/widget/VideoView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 643
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mIsDialogShowing:Z
    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$2902(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_0

    .line 604
    .end local v0           #messageId:I
    .end local v1           #themId:I
    :cond_4
    const v0, 0x1040011

    .restart local v0       #messageId:I
    goto :goto_1

    .line 612
    .restart local v1       #themId:I
    :cond_5
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mErrorDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2700(Landroid/widget/VideoView;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
