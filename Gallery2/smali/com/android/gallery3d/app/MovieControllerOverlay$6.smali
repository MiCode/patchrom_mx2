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
    .line 922
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x3fc

    const/4 v3, 0x0

    .line 925
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 926
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    .line 929
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 935
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1902(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 936
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 937
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2302(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 938
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z
    invoke-static {v0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 939
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$6;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
