.class Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->startWaveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)Lcom/android/internal/widget/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)Lcom/android/internal/widget/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 711
    return-void
.end method
