.class Lcom/android/gallery3d/app/MovieControllerOverlay$5;
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
    .line 904
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

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

    .line 907
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 908
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    .line 910
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2302(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 917
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 918
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1902(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 919
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 920
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$5;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
