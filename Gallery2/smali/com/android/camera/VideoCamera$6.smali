.class Lcom/android/camera/VideoCamera$6;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    const-wide/16 v4, 0x32

    const-wide/16 v2, 0x0

    .line 778
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3002(Lcom/android/camera/VideoCamera;Z)Z

    .line 779
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mSecondLevelFadeOut:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3700(Lcom/android/camera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 781
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 785
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3300(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 787
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 790
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 791
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 793
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 774
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    const-wide/16 v4, 0xc8

    const-wide/16 v2, 0x0

    .line 754
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/VideoCamera;->mIsMenuAnimation:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$3002(Lcom/android/camera/VideoCamera;Z)Z

    .line 755
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mSecondLevelFadeIn:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3100(Lcom/android/camera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 757
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mIsMeizuVideoIntent:Z
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1900(Lcom/android/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mThumbnailView:Lcom/android/camera/ui/MaskedRotateImageView;

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mSwitchCameraModeLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3200(Lcom/android/camera/VideoCamera;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 761
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mCameraId:I

    invoke-static {v0}, Lcom/android/camera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMenuControl:Lcom/android/camera/ui/GlowImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3300(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 763
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMenuControlImg:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mBackControl:Lcom/android/camera/ui/GlowImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 766
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mBackControlImg:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 767
    iget-object v0, p0, Lcom/android/camera/VideoCamera$6;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mMenuShowIcon:Lcom/android/camera/ui/GlowImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$3600(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/GlowImageView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 769
    :cond_2
    return-void
.end method
