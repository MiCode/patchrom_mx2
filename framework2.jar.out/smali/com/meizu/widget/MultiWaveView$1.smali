.class Lcom/meizu/widget/MultiWaveView$1;
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
    .line 180
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$1;->this$0:Lcom/meizu/widget/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$1;->this$0:Lcom/meizu/widget/MultiWaveView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/MultiWaveView$1;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/meizu/widget/MultiWaveView;->access$300(Lcom/meizu/widget/MultiWaveView;)F

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/MultiWaveView$1;->this$0:Lcom/meizu/widget/MultiWaveView;

    #getter for: Lcom/meizu/widget/MultiWaveView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/meizu/widget/MultiWaveView;->access$400(Lcom/meizu/widget/MultiWaveView;)F

    move-result v3

    #calls: Lcom/meizu/widget/MultiWaveView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/meizu/widget/MultiWaveView;->access$500(Lcom/meizu/widget/MultiWaveView;IFF)V

    .line 183
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$1;->this$0:Lcom/meizu/widget/MultiWaveView;

    #calls: Lcom/meizu/widget/MultiWaveView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/meizu/widget/MultiWaveView;->access$600(Lcom/meizu/widget/MultiWaveView;)V

    .line 184
    return-void
.end method
