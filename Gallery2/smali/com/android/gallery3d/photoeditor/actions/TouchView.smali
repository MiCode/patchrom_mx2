.class Lcom/android/gallery3d/photoeditor/actions/TouchView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "TouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private singleTapListener:Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/TouchView$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/TouchView$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/TouchView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->gestureDetector:Landroid/view/GestureDetector;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->singleTapListener:Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
