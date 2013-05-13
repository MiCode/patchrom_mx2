.class Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;
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
    .line 165
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->ping()V

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$100(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$200(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)F

    move-result v3

    #calls: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$300(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;IFF)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    #calls: Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->access$400(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)V

    .line 170
    return-void
.end method
