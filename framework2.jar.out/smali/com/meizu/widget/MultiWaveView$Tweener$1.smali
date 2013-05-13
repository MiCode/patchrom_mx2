.class final Lcom/meizu/widget/MultiWaveView$Tweener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView$Tweener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1643
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1652
    #calls: Lcom/meizu/widget/MultiWaveView$Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/meizu/widget/MultiWaveView$Tweener;->access$1700(Landroid/animation/Animator;)V

    .line 1653
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1647
    #calls: Lcom/meizu/widget/MultiWaveView$Tweener;->remove(Landroid/animation/Animator;)V
    invoke-static {p1}, Lcom/meizu/widget/MultiWaveView$Tweener;->access$1700(Landroid/animation/Animator;)V

    .line 1648
    return-void
.end method
