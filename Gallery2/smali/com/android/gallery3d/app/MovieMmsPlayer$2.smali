.class Lcom/android/gallery3d/app/MovieMmsPlayer$2;
.super Ljava/lang/Object;
.source "MovieMmsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieMmsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieMmsPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    #getter for: Lcom/android/gallery3d/app/MovieMmsPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->access$000(Lcom/android/gallery3d/app/MovieMmsPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    #getter for: Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->access$100(Lcom/android/gallery3d/app/MovieMmsPlayer;)Lcom/android/gallery3d/app/MovieMmsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieMmsController;->showPlaying()V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    #getter for: Lcom/android/gallery3d/app/MovieMmsPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->access$300(Lcom/android/gallery3d/app/MovieMmsPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    #getter for: Lcom/android/gallery3d/app/MovieMmsPlayer;->mPlayingChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieMmsPlayer;->access$200(Lcom/android/gallery3d/app/MovieMmsPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsPlayer$2;->this$0:Lcom/android/gallery3d/app/MovieMmsPlayer;

    #getter for: Lcom/android/gallery3d/app/MovieMmsPlayer;->mController:Lcom/android/gallery3d/app/MovieMmsController;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieMmsPlayer;->access$100(Lcom/android/gallery3d/app/MovieMmsPlayer;)Lcom/android/gallery3d/app/MovieMmsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieMmsController;->showLoading()V

    goto :goto_0
.end method
