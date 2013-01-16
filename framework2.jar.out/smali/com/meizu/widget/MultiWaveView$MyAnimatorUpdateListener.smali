.class Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimatorUpdateListener"
.end annotation


# instance fields
.field public ignorSnap:Z

.field final synthetic this$0:Lcom/meizu/widget/MultiWaveView;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/MultiWaveView;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;->this$0:Lcom/meizu/widget/MultiWaveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;->ignorSnap:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/MultiWaveView;Lcom/meizu/widget/MultiWaveView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;-><init>(Lcom/meizu/widget/MultiWaveView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;->this$0:Lcom/meizu/widget/MultiWaveView;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;->ignorSnap:Z

    #calls: Lcom/meizu/widget/MultiWaveView;->handleMove(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, v1, v2}, Lcom/meizu/widget/MultiWaveView;->access$200(Lcom/meizu/widget/MultiWaveView;Landroid/view/MotionEvent;Z)V

    .line 125
    iget-object v0, p0, Lcom/meizu/widget/MultiWaveView$MyAnimatorUpdateListener;->this$0:Lcom/meizu/widget/MultiWaveView;

    invoke-virtual {v0}, Lcom/meizu/widget/MultiWaveView;->invalidate()V

    .line 126
    return-void
.end method
