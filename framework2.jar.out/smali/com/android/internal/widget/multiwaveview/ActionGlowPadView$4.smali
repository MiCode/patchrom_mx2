.class Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
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
    .line 180
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$600(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;I)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #setter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$502(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;I)I

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #calls: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$700(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;ZZ)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #setter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$802(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;Z)Z

    .line 188
    return-void
.end method
