.class Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$3;
.super Ljava/lang/Object;
.source "ActionGlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 173
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$3;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;->invalidate()V

    .line 176
    return-void
.end method
