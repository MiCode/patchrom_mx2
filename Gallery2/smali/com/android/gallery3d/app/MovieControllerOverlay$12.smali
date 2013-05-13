.class Lcom/android/gallery3d/app/MovieControllerOverlay$12;
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
    .line 1014
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f0200db

    const/4 v1, 0x0

    .line 1017
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6802(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1020
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaVolumeProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7200(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V

    .line 1027
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7102(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1028
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mCurrentVolume:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7302(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1029
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeTouchSeek:Lcom/android/gallery3d/seekbar/VerSeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/seekbar/VerSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeProgress:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setProgress(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$12;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
