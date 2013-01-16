.class Landroid/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 509
    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, -0x1

    .line 512
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/widget/VideoView$PendingTrackInfo;

    move-result-object v2

    iget v0, v2, Landroid/widget/VideoView$PendingTrackInfo;->audioTrackIndex:I

    .line 513
    .local v0, aindex:I
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/widget/VideoView$PendingTrackInfo;

    move-result-object v2

    iget v1, v2, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    .line 514
    .local v1, tindex:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mAudioTrack:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/widget/VideoView;->access$500(Landroid/widget/VideoView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 515
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setAudioTrackIndex(I)Z

    .line 517
    :cond_0
    if-ltz v1, :cond_1

    .line 518
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTimedText:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 519
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setTimeTextIndex(I)V

    .line 524
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    const/4 v3, 0x0

    #setter for: Landroid/widget/VideoView;->mIsSeeking:Z
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Z)Z

    .line 525
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/widget/VideoView$PendingTrackInfo;

    move-result-object v2

    iput v4, v2, Landroid/widget/VideoView$PendingTrackInfo;->audioTrackIndex:I

    .line 526
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mPendingTracknfo:Landroid/widget/VideoView$PendingTrackInfo;
    invoke-static {v2}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/widget/VideoView$PendingTrackInfo;

    move-result-object v2

    iput v4, v2, Landroid/widget/VideoView$PendingTrackInfo;->timeTextIndex:I

    .line 527
    return-void

    .line 521
    :cond_2
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->closeTimeText(I)V

    goto :goto_0
.end method
