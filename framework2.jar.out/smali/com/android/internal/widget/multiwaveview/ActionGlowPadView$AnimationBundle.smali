.class Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "ActionGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->this$0:Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/ActionGlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 137
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 139
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->clear()V

    .line 142
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->mSuspended:Z

    .line 155
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 127
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 129
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 131
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->size()I

    move-result v1

    .line 146
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 148
    .local v0, anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0           #anim:Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/ActionGlowPadView$AnimationBundle;->clear()V

    .line 151
    return-void
.end method
