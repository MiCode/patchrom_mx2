.class public Lcom/android/gallery3d/photoeditor/Toolbar;
.super Landroid/widget/RelativeLayout;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;,
        Lcom/android/gallery3d/photoeditor/Toolbar$GestureListener;
    }
.end annotation


# instance fields
.field private final idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

.field private isLongClick:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private final tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->isLongClick:Z

    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/Toolbar$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/photoeditor/Toolbar$GestureListener;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar;Lcom/android/gallery3d/photoeditor/Toolbar$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 52
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/photoeditor/Toolbar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/Toolbar$1;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 69
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/Toolbar;)Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/Toolbar;)Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/photoeditor/Toolbar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->isLongClick:Z

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 131
    .local v0, eventType:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->isLongClick:Z

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->isLongClick:Z

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->hideSourcePhoto()V

    goto :goto_0
.end method

.method public setPhotoView(Lcom/android/gallery3d/photoeditor/PhotoView;)V
    .locals 0
    .parameter "photoView"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 75
    return-void
.end method
