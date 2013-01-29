.class Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/CropView$HighlightRectangle;-><init>(Lcom/android/gallery3d/ui/CropView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

.field final synthetic val$this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;Lcom/android/gallery3d/ui/CropView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iput-object p2, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->val$this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "e"

    .prologue
    .line 480
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mFlippable:Z
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$800(Lcom/android/gallery3d/ui/CropView;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 481
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$900(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 482
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$900(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x4080

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    const/high16 v13, 0x4080

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    .line 483
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$1000(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/PointF;

    move-result-object v5

    .line 484
    .local v5, point:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 485
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/gallery3d/ui/CropView$AnimationController;->inverseMapPoint(Landroid/graphics/PointF;)V

    .line 486
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$900(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 487
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 488
    .local v1, centerX:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 489
    .local v2, centerY:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, v11, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, v11, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    div-float v3, v10, v11

    .line 490
    .local v3, heightBy2:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, v11, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, v11, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    div-float v9, v10, v11

    .line 492
    .local v9, widthBy2:F
    sub-float v10, v1, v9

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 493
    .local v4, l:F
    add-float v10, v1, v9

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 494
    .local v6, r:F
    sub-float v10, v2, v3

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 495
    .local v7, t:F
    add-float v10, v2, v3

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 497
    .local v0, b:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10, v4, v7, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 498
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    const/high16 v11, 0x3f80

    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v12, v12, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v12

    div-float/2addr v11, v12

    #setter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v10, v11}, Lcom/android/gallery3d/ui/CropView;->access$702(Lcom/android/gallery3d/ui/CropView;F)F

    .line 500
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, v11, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v11, v11, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 501
    .local v8, targetRatio:F
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v10

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_0

    sub-float v10, v6, v4

    sub-float v11, v0, v7

    div-float/2addr v10, v11

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_0

    .line 502
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$900(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-virtual {v10, v11, v12, v8, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 503
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 504
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 505
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$900(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v11

    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/common/Utils;->fitRectFInto(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 506
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    sub-float v11, v1, v11

    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v12}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    sub-float v12, v2, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 510
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;->this$1:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    iget-object v10, v10, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #calls: Lcom/android/gallery3d/ui/CropView;->updateCropSizeText()V
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$1100(Lcom/android/gallery3d/ui/CropView;)V

    .line 513
    .end local v0           #b:F
    .end local v1           #centerX:F
    .end local v2           #centerY:F
    .end local v3           #heightBy2:F
    .end local v4           #l:F
    .end local v5           #point:Landroid/graphics/PointF;
    .end local v6           #r:F
    .end local v7           #t:F
    .end local v8           #targetRatio:F
    .end local v9           #widthBy2:F
    :cond_1
    const/4 v10, 0x0

    return v10
.end method
