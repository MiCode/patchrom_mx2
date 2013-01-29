.class Lcom/android/gallery3d/app/MovieControllerOverlay$11;
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
    .line 1093
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f0200de

    const/4 v1, 0x0

    .line 1096
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7702(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1099
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1100
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8100(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V

    .line 1106
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1107
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$11;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
