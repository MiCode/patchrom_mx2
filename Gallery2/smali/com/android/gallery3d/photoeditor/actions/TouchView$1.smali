.class Lcom/android/gallery3d/photoeditor/actions/TouchView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/TouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/TouchView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/TouchView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/TouchView;->singleTapListener:Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->access$000(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 58
    .local v0, point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/TouchView;->singleTapListener:Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->access$000(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;->onSingleTap(Landroid/graphics/PointF;)V

    .line 61
    .end local v0           #point:Landroid/graphics/PointF;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
