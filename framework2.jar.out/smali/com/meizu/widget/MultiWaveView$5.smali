.class Lcom/meizu/widget/MultiWaveView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/MultiWaveView;->startMove2TargetAnimation(IJZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCanceled:Z

.field final synthetic this$0:Lcom/meizu/widget/MultiWaveView;

.field final synthetic val$target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    iput-object p2, p0, Lcom/meizu/widget/MultiWaveView$5;->val$target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$5;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$5;->isCanceled:Z

    .line 561
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    #calls: Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/meizu/widget/MultiWaveView;->access$1400(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V

    .line 562
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    #calls: Lcom/meizu/widget/MultiWaveView;->handleCancel(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/meizu/widget/MultiWaveView;->access$1600(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V

    .line 563
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    const/4 v3, 0x0

    .line 550
    iget-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$5;->isCanceled:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;
    invoke-static {v0}, Lcom/meizu/widget/MultiWaveView;->access$1300(Lcom/meizu/widget/MultiWaveView;)Lcom/meizu/widget/MultiWaveView$MyPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$5;->val$target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView$5;->val$target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getPositionX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$MyPoint;->setX(F)V

    .line 552
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mMovePoint:Lcom/meizu/widget/MultiWaveView$MyPoint;
    invoke-static {v0}, Lcom/meizu/widget/MultiWaveView;->access$1300(Lcom/meizu/widget/MultiWaveView;)Lcom/meizu/widget/MultiWaveView$MyPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$5;->val$target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v1}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView$5;->val$target:Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    invoke-virtual {v2}, Lcom/meizu/widget/MultiWaveView$TargetDrawable;->getPositionY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView$MyPoint;->setY(F)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    #calls: Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V
    invoke-static {v0, v3}, Lcom/meizu/widget/MultiWaveView;->access$1400(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V

    .line 555
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    #calls: Lcom/meizu/widget/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V
    invoke-static {v0, v3}, Lcom/meizu/widget/MultiWaveView;->access$1500(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$5;->isCanceled:Z

    .line 557
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$5;->this$0:Lcom/meizu/widget/MultiWaveView;

    const/4 v1, 0x0

    #calls: Lcom/meizu/widget/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/meizu/widget/MultiWaveView;->access$1200(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;)V

    .line 547
    return-void
.end method
