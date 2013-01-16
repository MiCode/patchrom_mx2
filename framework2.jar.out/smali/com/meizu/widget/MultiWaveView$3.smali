.class Lcom/meizu/widget/MultiWaveView$3;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$3;->this$0:Lcom/meizu/widget/MultiWaveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$3;->this$0:Lcom/meizu/widget/MultiWaveView;

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$3;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mHandleDrawable:Lcom/meizu/widget/MultiWaveView$TargetDrawable;
    invoke-static {v1}, Lcom/meizu/widget/MultiWaveView;->access$700(Lcom/meizu/widget/MultiWaveView;)Lcom/meizu/widget/MultiWaveView$TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MultiWaveView;->invalidateGlobalRegion(Lcom/meizu/widget/MultiWaveView$TargetDrawable;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$3;->this$0:Lcom/meizu/widget/MultiWaveView;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView;->invalidate()V

    .line 199
    return-void
.end method
