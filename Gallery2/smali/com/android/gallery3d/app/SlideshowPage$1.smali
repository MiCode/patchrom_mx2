.class Lcom/android/gallery3d/app/SlideshowPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SlideshowPage;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$1;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$1;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #getter for: Lcom/android/gallery3d/app/SlideshowPage;->mSlideshowView:Lcom/android/gallery3d/ui/SlideshowView;
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowPage;->access$000(Lcom/android/gallery3d/app/SlideshowPage;)Lcom/android/gallery3d/ui/SlideshowView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/gallery3d/ui/SlideshowView;->layout(IIII)V

    .line 110
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$1;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    #calls: Lcom/android/gallery3d/app/SlideshowPage;->exit()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SlideshowPage;->access$100(Lcom/android/gallery3d/app/SlideshowPage;)V

    .line 117
    :cond_0
    return v1
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$1;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    iget-boolean v0, v0, Lcom/android/gallery3d/app/ActivityState;->mNeedSetClearColor:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$1;->this$0:Lcom/android/gallery3d/app/SlideshowPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/gallery3d/app/ActivityState;->mNeedSetClearColor:Z

    .line 126
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 127
    return-void
.end method
