.class public Lcom/android/gallery3d/photoeditor/FilterStack;
.super Ljava/lang/Object;
.source "FilterStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;
    }
.end annotation


# instance fields
.field private final appliedStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final buffers:[Lcom/android/gallery3d/photoeditor/Photo;

.field private mAnimationEnable:Z

.field private mIsMakeAnimation:Z

.field private outputTopFilter:Z

.field private volatile paused:Z

.field private final photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private queuedTopFilterChange:Ljava/lang/Runnable;

.field private final redoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/android/gallery3d/photoeditor/Photo;

.field private final stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    const-string v0, "jni_eglfence"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V
    .locals 4
    .parameter "photoView"
    .parameter "stackListener"
    .parameter "savedState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    .line 49
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery3d/photoeditor/Photo;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    .line 60
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mIsMakeAnimation:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mAnimationEnable:Z

    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 65
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;

    .line 66
    if-eqz p3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    const-string v3, "applied_stack"

    invoke-direct {p0, p3, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    const-string v3, "redo_stack"

    invoke-direct {p0, p3, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 69
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {p2, v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;->onStackChanged(ZZ)V

    .line 72
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 70
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilterInternal(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->stackChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->invalidateTopFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/FilterStack;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/Photo;)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/FilterStack;)[Lcom/android/gallery3d/photoeditor/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/FilterStack;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getOutBufferIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->invalidate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    return-object v0
.end method

.method private callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$1;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method private getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "savedState"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getOutBufferIndex(I)I
    .locals 1
    .parameter "filterIndex"

    .prologue
    .line 155
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private invalidate()V
    .locals 7

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 94
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v3, :cond_4

    .line 98
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/photoeditor/Photo;->create(II)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 99
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->reallocateBuffer(I)V

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    .line 103
    .local v1, photo:Lcom/android/gallery3d/photoeditor/Photo;
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 104
    .local v2, size:I
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->paused:Z

    if-nez v3, :cond_3

    .line 105
    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->runFilter(I)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    .end local v2           #size:I
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 108
    .restart local v2       #size:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    invoke-virtual {v3, v1, v4}, Lcom/android/gallery3d/photoeditor/PhotoView;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 110
    .end local v1           #photo:Lcom/android/gallery3d/photoeditor/Photo;
    .end local v2           #size:I
    :cond_4
    return-void
.end method

.method private invalidateTopFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mAnimationEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mIsMakeAnimation:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->startAnimation()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mIsMakeAnimation:Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->runFilter(I)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 133
    :cond_1
    return-void
.end method

.method private native nativeEglSetFenceAndWait()V
.end method

.method private pushFilterInternal(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 2
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->setApplied(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    .line 218
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->stackChanged()V

    .line 219
    return-void
.end method

.method private reallocateBuffer(I)V
    .locals 4
    .parameter "target"

    .prologue
    .line 85
    xor-int/lit8 v0, p1, 0x1

    .line 86
    .local v0, other:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/Photo;->create(II)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v2

    aput-object v2, v1, p1

    .line 87
    return-void
.end method

.method private runFilter(I)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 4
    .parameter "filterIndex"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getOutBufferIndex(I)I

    move-result v1

    .line 137
    .local v1, out:I
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    xor-int/lit8 v3, v1, 0x1

    aget-object v0, v2, v3

    .line 138
    .local v0, input:Lcom/android/gallery3d/photoeditor/Photo;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/photoeditor/Photo;->matchDimension(Lcom/android/gallery3d/photoeditor/Photo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 141
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->reallocateBuffer(I)V

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/filters/Filter;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/photoeditor/filters/Filter;->process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->nativeEglSetFenceAndWait()V

    .line 145
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    .line 147
    :goto_1
    return-object v2

    .line 137
    .end local v0           #input:Lcom/android/gallery3d/photoeditor/Photo;
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    goto :goto_0

    .line 147
    .restart local v0       #input:Lcom/android/gallery3d/photoeditor/Photo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private stackChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 172
    .local v1, canUndo:Z
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 173
    .local v0, canRedo:Z
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v3, Lcom/android/gallery3d/photoeditor/FilterStack$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack$2;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void

    .end local v0           #canRedo:Z
    .end local v1           #canUndo:Z
    :cond_0
    move v1, v3

    .line 171
    goto :goto_0

    .restart local v1       #canUndo:Z
    :cond_1
    move v0, v3

    .line 172
    goto :goto_1
.end method


# virtual methods
.method public doAll(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$6;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$6;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public findFilterInStack(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, name:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    .line 286
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/Filter;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 291
    .end local v0           #filter:Lcom/android/gallery3d/photoeditor/filters/Filter;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputBitmap(Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$3;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$3;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public getTopFilter()Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->paused:Z

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->flush()V

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$10;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/FilterStack$10;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->onPause()V

    .line 371
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->onResume()V

    .line 375
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mAnimationEnable:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->paused:Z

    .line 377
    return-void
.end method

.method public popFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)Z
    .locals 3
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->getTopFilter()Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v0

    .line 249
    .local v0, f:Lcom/android/gallery3d/photoeditor/filters/Filter;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/Filter;->isApplied()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 256
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pushFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$5;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$5;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public redo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$8;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$8;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public removeFilter()Z
    .locals 3

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    .line 276
    .local v0, f:Lcom/android/gallery3d/photoeditor/filters/Filter;
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/Filter;->isReplaceable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 278
    const/4 v2, 0x1

    .line 281
    .end local v0           #f:Lcom/android/gallery3d/photoeditor/filters/Filter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public replaceFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)Z
    .locals 4
    .parameter "filter"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->isReplaceable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    .line 265
    .local v0, f:Lcom/android/gallery3d/photoeditor/filters/Filter;
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/Filter;->isReplaceable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    .line 267
    const/4 v2, 0x1

    .line 271
    .end local v0           #f:Lcom/android/gallery3d/photoeditor/filters/Filter;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveStacks(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 80
    const-string v0, "applied_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 81
    const-string v0, "redo_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 82
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mAnimationEnable:Z

    .line 122
    return-void
.end method

.method public setIsMakeAnimationEable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->mIsMakeAnimation:Z

    .line 114
    return-void
.end method

.method public setPhotoSource(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "bitmap"
    .parameter "callback"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/FilterStack$4;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public setTopFilterApplied()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->setApplied(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method public topFilterChanged(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/FilterStack$9;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$9;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public undo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$7;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$7;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method
