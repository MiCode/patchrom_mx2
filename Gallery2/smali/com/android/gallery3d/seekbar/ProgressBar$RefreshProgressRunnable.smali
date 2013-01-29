.class Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/seekbar/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/android/gallery3d/seekbar/ProgressBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/seekbar/ProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/gallery3d/seekbar/ProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput p2, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mId:I

    .line 574
    iput p3, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 575
    iput-boolean p4, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 576
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/gallery3d/seekbar/ProgressBar;

    iget v1, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    const/4 v4, 0x1

    #calls: Lcom/android/gallery3d/seekbar/ProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/seekbar/ProgressBar;->access$000(Lcom/android/gallery3d/seekbar/ProgressBar;IIZZ)V

    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->this$0:Lcom/android/gallery3d/seekbar/ProgressBar;

    #setter for: Lcom/android/gallery3d/seekbar/ProgressBar;->mRefreshProgressRunnable:Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/android/gallery3d/seekbar/ProgressBar;->access$102(Lcom/android/gallery3d/seekbar/ProgressBar;Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;)Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;

    .line 582
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 585
    iput p1, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mId:I

    .line 586
    iput p2, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 587
    iput-boolean p3, p0, Lcom/android/gallery3d/seekbar/ProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 588
    return-void
.end method
