.class public Lcom/android/gallery3d/anim/CanvasAnimationSequence;
.super Lcom/android/gallery3d/anim/CanvasAnimation;
.source "CanvasAnimationSequence.java"


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mSaveFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mSaveFlags:I

    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mSaveFlags:I

    invoke-virtual {p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mSaveFlags:I

    .line 21
    return-void
.end method

.method public apply(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    if-le v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 28
    :cond_0
    return-void
.end method

.method public calculate(J)Z
    .locals 3
    .parameter "currentTimeMillis"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, more:Z
    iget-object v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    if-le v1, v2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    iget v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    if-le v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->reset()V

    .line 44
    iget-object v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 45
    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0
.end method

.method public getAnimation(I)Lcom/android/gallery3d/anim/CanvasAnimation;
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/anim/CanvasAnimation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mSaveFlags:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    return v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 63
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 65
    .end local v0           #anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 33
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mAnimations:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/gallery3d/anim/CanvasAnimationSequence;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 58
    :cond_0
    return-void
.end method
