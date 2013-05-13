.class Lcom/android/gallery3d/app/MovieControllerOverlay$6;
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
    .line 910
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x3ed

    const/4 v3, 0x0

    .line 913
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 915
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5902(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5702(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 917
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 918
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6002(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 919
    return-void
.end method
