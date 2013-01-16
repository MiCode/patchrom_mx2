.class Lcom/meizu/widget/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


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
    .line 203
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/meizu/widget/MultiWaveView;->access$800(Lcom/meizu/widget/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    iget-object v1, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/meizu/widget/MultiWaveView;->access$800(Lcom/meizu/widget/MultiWaveView;)I

    move-result v1

    #calls: Lcom/meizu/widget/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/meizu/widget/MultiWaveView;->access$900(Lcom/meizu/widget/MultiWaveView;I)V

    .line 207
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    #setter for: Lcom/meizu/widget/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/meizu/widget/MultiWaveView;->access$802(Lcom/meizu/widget/MultiWaveView;I)I

    .line 208
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    #calls: Lcom/meizu/widget/MultiWaveView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/meizu/widget/MultiWaveView;->access$1000(Lcom/meizu/widget/MultiWaveView;ZZ)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$4;->this$0:Lcom/meizu/widget/MultiWaveView;

    #setter for: Lcom/meizu/widget/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/meizu/widget/MultiWaveView;->access$1102(Lcom/meizu/widget/MultiWaveView;Z)Z

    .line 211
    return-void
.end method
