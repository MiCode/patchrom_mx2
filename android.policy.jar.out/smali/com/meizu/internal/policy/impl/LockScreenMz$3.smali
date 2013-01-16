.class Lcom/meizu/internal/policy/impl/LockScreenMz$3;
.super Ljava/lang/Object;
.source "LockScreenMz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/LockScreenMz;->onHideMe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/LockScreenMz;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, -0x2710

    const/high16 v3, 0x3f80

    .line 812
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragCallback:Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;->onDragCancel()V

    .line 814
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mActivityScreenshot:Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager$ScreenshotImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;->normal:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mUnlockTab:Lcom/meizu/internal/policy/impl/LockViewBaseSe$UnlockTab;

    .line 816
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v1, v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mScreenHeight:I

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragPosY:I

    .line 817
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    const/4 v1, 0x0

    iput v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mDragMode:I

    .line 818
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    sget-object v1, Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;->NONE:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    iput-object v1, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mAnimMode:Lcom/meizu/internal/policy/impl/LockViewBaseSe$ANIM_MODE;

    .line 819
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mAnimateHelper:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->stopAnimation()V

    .line 820
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockScreenMz;->stepUnlockDisappearAnim()V

    .line 822
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    if-eq v0, v4, :cond_0

    .line 823
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 824
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfMmsIcon:I

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/LockScreenMz;->mMmsIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    if-eq v0, v4, :cond_1

    .line 827
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 828
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfTopAppIcon:I

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/LockScreenMz;->mTopAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    if-eq v0, v4, :cond_2

    .line 831
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 832
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget v1, v1, Lcom/meizu/internal/policy/impl/LockScreenMz;->mInitPosOfPhoneIcon:I

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockScreenMz$3;->this$0:Lcom/meizu/internal/policy/impl/LockScreenMz;

    iget-object v2, v2, Lcom/meizu/internal/policy/impl/LockScreenMz;->mPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 835
    :cond_2
    return-void
.end method
