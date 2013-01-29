.class Lcom/android/gallery3d/photoeditor/actions/CropView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/CropView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/CropView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropView;

    #calls: Lcom/android/gallery3d/photoeditor/actions/CropView;->swapCropped(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->access$000(Lcom/android/gallery3d/photoeditor/actions/CropView;Landroid/view/MotionEvent;)V

    .line 111
    const/4 v0, 0x0

    return v0
.end method
