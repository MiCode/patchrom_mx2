.class Lcom/android/gallery3d/ui/HudView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/HudView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/HudView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/HudView;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/gallery3d/ui/HudView$1;->this$0:Lcom/android/gallery3d/ui/HudView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView$1;->this$0:Lcom/android/gallery3d/ui/HudView;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/ui/HudView;->mLongPressed:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/HudView;->access$202(Lcom/android/gallery3d/ui/HudView;Z)Z

    .line 134
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/gallery3d/ui/HudView$1;->this$0:Lcom/android/gallery3d/ui/HudView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    #calls: Lcom/android/gallery3d/ui/HudView;->getClickedComponent(II)Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/HudView;->access$000(Lcom/android/gallery3d/ui/HudView;II)Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    move-result-object v0

    .line 126
    .local v0, com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/gallery3d/ui/HudView$1;->this$0:Lcom/android/gallery3d/ui/HudView;

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mId:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$100(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/gallery3d/ui/HudView;->onComponentClicked(IZ)V

    .line 128
    :cond_0
    return v4
.end method
