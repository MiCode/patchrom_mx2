.class Lcom/android/gallery3d/app/PhotoPage$11;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/android/gallery3d/seekbar/VerSeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1226
    if-nez p3, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMaxSysLight:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$5000(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMinSysLight:I
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    invoke-virtual {p1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$4802(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 1230
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBrightness:I
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->setAppBrightnessValue(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getProgress()I

    move-result v1

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mLightProgress:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5102(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 1242
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$11;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1243
    return-void
.end method
