.class Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
.super Lcom/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRectangle"
.end annotation


# instance fields
.field private mArrow:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHighlightRect:Landroid/graphics/RectF;

.field private mMovingEdges:I

.field private mReferenceX:F

.field private mReferenceY:F

.field private mTempPoint:Landroid/graphics/PointF;

.field private mTempRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/CropView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f40

    const/high16 v1, 0x3e80

    .line 473
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 462
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 463
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    .line 464
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 468
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 474
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mArrow:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 477
    new-instance v0, Landroid/view/GestureDetector;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle$1;-><init>(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;Lcom/android/gallery3d/ui/CropView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mGestureDetector:Landroid/view/GestureDetector;

    .line 516
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private drawHighlightRectangle(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;)V
    .locals 15
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 760
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v14

    .line 761
    .local v14, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/high16 v1, 0x4040

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    .line 762
    const/16 v1, 0xb20

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 764
    const/16 v1, 0xb90

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 765
    const/16 v1, 0x400

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 766
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 767
    const/16 v1, 0x207

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 769
    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$2000(Lcom/android/gallery3d/ui/CropView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 770
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 790
    :goto_0
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 791
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e00

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 793
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->getHeight()I

    move-result v1

    int-to-float v10, v1

    const/high16 v11, -0x6000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 795
    const/16 v1, 0xb90

    invoke-interface {v14, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 796
    return-void

    .line 773
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$1900(Lcom/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v4, v1, v2

    .line 774
    .local v4, sx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$2000(Lcom/android/gallery3d/ui/CropView;)F

    move-result v2

    mul-float v5, v1, v2

    .line 775
    .local v5, sy:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    .line 776
    .local v12, cx:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    .line 778
    .local v13, cy:F
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v13, v1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 779
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v13, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$2100(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 780
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$2100(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 782
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 783
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v14, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 785
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v7, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v8, v13, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$2100(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v5

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    .line 786
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v7, v12, v1

    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v8, v13, v1

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move v9, v5

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 787
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, -0x8000

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto/16 :goto_0
.end method

.method private moveEdges(Landroid/view/MotionEvent;)V
    .locals 18
    .parameter "event"

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v10

    .line 541
    .local v10, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    sub-float/2addr v14, v15

    div-float/2addr v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v15

    int-to-float v15, v15

    div-float v2, v14, v15

    .line 542
    .local v2, dx:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    sub-float/2addr v14, v15

    div-float/2addr v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v15

    int-to-float v15, v15

    div-float v3, v14, v15

    .line 543
    .local v3, dy:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 545
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    .line 547
    .local v7, r:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x10

    if-eqz v14, :cond_0

    .line 548
    iget v14, v7, Landroid/graphics/RectF;->left:F

    neg-float v14, v14

    const/high16 v15, 0x3f80

    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v2, v14, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 549
    iget v14, v7, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    const/high16 v15, 0x3f80

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v3, v14, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    .line 550
    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 627
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    .line 628
    return-void

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempPoint:Landroid/graphics/PointF;

    .line 553
    .local v6, point:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    invoke-virtual {v6, v14, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/gallery3d/ui/CropView$AnimationController;->inverseMapPoint(Landroid/graphics/PointF;)V

    .line 555
    iget v14, v7, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float v5, v14, v15

    .line 556
    .local v5, left:F
    iget v14, v7, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x4180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float v9, v14, v15

    .line 557
    .local v9, right:F
    iget v14, v7, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x4180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float v12, v14, v15

    .line 558
    .local v12, top:F
    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x4180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float v1, v14, v15

    .line 559
    .local v1, bottom:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_1

    .line 560
    iget v14, v6, Landroid/graphics/PointF;->x:F

    const/high16 v15, 0x3f80

    invoke-static {v14, v5, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->right:F

    .line 562
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_2

    .line 563
    iget v14, v6, Landroid/graphics/PointF;->x:F

    const/4 v15, 0x0

    invoke-static {v14, v15, v9}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->left:F

    .line 565
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_3

    .line 566
    iget v14, v6, Landroid/graphics/PointF;->y:F

    const/4 v15, 0x0

    invoke-static {v14, v15, v1}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->top:F

    .line 568
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_4

    .line 569
    iget v14, v6, Landroid/graphics/PointF;->y:F

    const/high16 v15, 0x3f80

    invoke-static {v14, v12, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->bottom:F

    .line 571
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v14

    const/high16 v15, -0x4080

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_6

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v15

    int-to-float v15, v15

    div-float v11, v14, v15

    .line 573
    .local v11, targetRatio:F
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v15

    div-float/2addr v14, v15

    cmpl-float v14, v14, v11

    if-lez v14, :cond_9

    .line 574
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v14

    div-float v4, v14, v11

    .line 575
    .local v4, height:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_8

    .line 576
    iget v14, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v4

    const/high16 v15, 0x3f80

    invoke-static {v14, v12, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->bottom:F

    .line 588
    .end local v4           #height:F
    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v15

    div-float/2addr v14, v15

    cmpl-float v14, v14, v11

    if-lez v14, :cond_c

    .line 589
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float v13, v14, v11

    .line 590
    .local v13, width:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_b

    .line 591
    iget v14, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v13

    const/4 v15, 0x0

    invoke-static {v14, v15, v9}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->left:F

    .line 605
    .end local v11           #targetRatio:F
    .end local v13           #width:F
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 606
    .local v8, rect:Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x4200

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_e

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x4200

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_e

    .line 607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v14

    if-nez v14, :cond_7

    .line 608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    new-instance v15, Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f020064

    invoke-direct/range {v15 .. v17}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/gallery3d/ui/CropView;->mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1202(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 610
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v15

    #setter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1302(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 625
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #calls: Lcom/android/gallery3d/ui/CropView;->updateCropSizeText()V
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$1100(Lcom/android/gallery3d/ui/CropView;)V

    goto/16 :goto_0

    .line 577
    .end local v8           #rect:Landroid/graphics/RectF;
    .restart local v4       #height:F
    .restart local v11       #targetRatio:F
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_5

    .line 578
    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v4

    const/4 v15, 0x0

    invoke-static {v14, v15, v1}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 581
    .end local v4           #height:F
    :cond_9
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float v13, v14, v11

    .line 582
    .restart local v13       #width:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_a

    .line 583
    iget v14, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v13

    const/4 v15, 0x0

    invoke-static {v14, v15, v9}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 584
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_5

    .line 585
    iget v14, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v13

    const/high16 v15, 0x3f80

    invoke-static {v14, v5, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 592
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_6

    .line 593
    iget v14, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v13

    const/high16 v15, 0x3f80

    invoke-static {v14, v5, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 596
    .end local v13           #width:F
    :cond_c
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v14

    div-float v4, v14, v11

    .line 597
    .restart local v4       #height:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_d

    .line 598
    iget v14, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v4

    const/high16 v15, 0x3f80

    invoke-static {v14, v12, v15}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 599
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_6

    .line 600
    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v4

    const/4 v15, 0x0

    invoke-static {v14, v15, v1}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    iput v14, v7, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 611
    .end local v4           #height:F
    .end local v11           #targetRatio:F
    .restart local v8       #rect:Landroid/graphics/RectF;
    :cond_e
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x4200

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_10

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinWidthFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$1400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v14

    if-nez v14, :cond_f

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    new-instance v15, Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f020063

    invoke-direct/range {v15 .. v17}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/gallery3d/ui/CropView;->mMinWidthFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1402(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 615
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinWidthFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$1400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v15

    #setter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1302(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    goto/16 :goto_3

    .line 616
    :cond_10
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    const/high16 v15, 0x4200

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_12

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinHeightFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14}, Lcom/android/gallery3d/ui/CropView;->access$1500(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v14

    if-nez v14, :cond_11

    .line 618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    new-instance v15, Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f020062

    invoke-direct/range {v15 .. v17}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/gallery3d/ui/CropView;->mMinHeightFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1502(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 620
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinHeightFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$1500(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v15

    #setter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1302(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    goto/16 :goto_3

    .line 622
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mNormalFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v15}, Lcom/android/gallery3d/ui/CropView;->access$1600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v15

    #setter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v14, v15}, Lcom/android/gallery3d/ui/CropView;->access$1302(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    goto/16 :goto_3
.end method

.method private setMovingEdges(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 631
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v12}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 632
    .local v5, r:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 633
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 635
    .local v9, y:F
    const/16 v4, 0x1e

    .line 636
    .local v4, moveFrameTolerance:I
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v10

    const/16 v11, 0x3c

    int-to-float v11, v11

    sub-float/2addr v10, v11

    int-to-float v11, v4

    cmpg-float v10, v10, v11

    if-lez v10, :cond_0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/16 v11, 0x3c

    int-to-float v11, v11

    sub-float/2addr v10, v11

    int-to-float v11, v4

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 637
    :cond_0
    const/4 v4, 0x0

    .line 640
    :cond_1
    iget v10, v5, Landroid/graphics/RectF;->left:F

    int-to-float v11, v4

    add-float/2addr v10, v11

    cmpl-float v10, v8, v10

    if-lez v10, :cond_3

    iget v10, v5, Landroid/graphics/RectF;->right:F

    int-to-float v11, v4

    sub-float/2addr v10, v11

    cmpg-float v10, v8, v10

    if-gez v10, :cond_3

    iget v10, v5, Landroid/graphics/RectF;->top:F

    int-to-float v11, v4

    add-float/2addr v10, v11

    cmpl-float v10, v9, v10

    if-lez v10, :cond_3

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v4

    sub-float/2addr v10, v11

    cmpg-float v10, v9, v10

    if-gez v10, :cond_3

    .line 642
    const/16 v10, 0x10

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 679
    :cond_2
    :goto_0
    return-void

    .line 646
    :cond_3
    iget v10, v5, Landroid/graphics/RectF;->top:F

    const/high16 v11, 0x41f0

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v9

    if-gtz v10, :cond_b

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x41f0

    add-float/2addr v10, v11

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_b

    const/4 v2, 0x1

    .line 648
    .local v2, inVerticalRange:Z
    :goto_1
    iget v10, v5, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x41f0

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v8

    if-gtz v10, :cond_c

    iget v10, v5, Landroid/graphics/RectF;->right:F

    const/high16 v11, 0x41f0

    add-float/2addr v10, v11

    cmpg-float v10, v8, v10

    if-gtz v10, :cond_c

    const/4 v1, 0x1

    .line 651
    .local v1, inHorizontalRange:Z
    :goto_2
    if-eqz v2, :cond_7

    .line 652
    iget v10, v5, Landroid/graphics/RectF;->left:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41f0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_d

    const/4 v3, 0x1

    .line 653
    .local v3, left:Z
    :goto_3
    iget v10, v5, Landroid/graphics/RectF;->right:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41f0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_e

    const/4 v6, 0x1

    .line 654
    .local v6, right:Z
    :goto_4
    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 655
    iget v10, v5, Landroid/graphics/RectF;->left:F

    sub-float v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v5, Landroid/graphics/RectF;->right:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_f

    const/4 v3, 0x1

    .line 656
    :goto_5
    if-nez v3, :cond_10

    const/4 v6, 0x1

    .line 658
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    iget v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 659
    :cond_5
    if-eqz v6, :cond_6

    iget v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 660
    :cond_6
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v10

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_7

    if-eqz v1, :cond_7

    .line 661
    iget v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v10, v5, Landroid/graphics/RectF;->top:F

    iget v12, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v12

    const/high16 v12, 0x4000

    div-float/2addr v10, v12

    cmpl-float v10, v9, v10

    if-lez v10, :cond_11

    const/16 v10, 0x8

    :goto_7
    or-int/2addr v10, v11

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 665
    .end local v3           #left:Z
    .end local v6           #right:Z
    :cond_7
    if-eqz v1, :cond_2

    .line 666
    iget v10, v5, Landroid/graphics/RectF;->top:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41f0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_12

    const/4 v7, 0x1

    .line 667
    .local v7, top:Z
    :goto_8
    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41f0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_13

    const/4 v0, 0x1

    .line 668
    .local v0, bottom:Z
    :goto_9
    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    .line 669
    iget v10, v5, Landroid/graphics/RectF;->top:F

    sub-float v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_14

    const/4 v7, 0x1

    .line 670
    :goto_a
    if-nez v7, :cond_15

    const/4 v0, 0x1

    .line 672
    :cond_8
    :goto_b
    if-eqz v7, :cond_9

    iget v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 673
    :cond_9
    if-eqz v0, :cond_a

    iget v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 674
    :cond_a
    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v10

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    if-eqz v2, :cond_2

    .line 675
    iget v11, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget v12, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v12

    const/high16 v12, 0x4000

    div-float/2addr v10, v12

    cmpl-float v10, v8, v10

    if-lez v10, :cond_16

    const/4 v10, 0x4

    :goto_c
    or-int/2addr v10, v11

    iput v10, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    goto/16 :goto_0

    .line 646
    .end local v0           #bottom:Z
    .end local v1           #inHorizontalRange:Z
    .end local v2           #inVerticalRange:Z
    .end local v7           #top:Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 648
    .restart local v2       #inVerticalRange:Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 652
    .restart local v1       #inHorizontalRange:Z
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 653
    .restart local v3       #left:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 655
    .restart local v6       #right:Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 656
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 661
    :cond_11
    const/4 v10, 0x2

    goto/16 :goto_7

    .line 666
    .end local v3           #left:Z
    .end local v6           #right:Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_8

    .line 667
    .restart local v7       #top:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    .line 669
    .restart local v0       #bottom:Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_a

    .line 670
    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    .line 675
    :cond_16
    const/4 v10, 0x1

    goto :goto_c
.end method


# virtual methods
.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #setter for: Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/CropView;->access$1702(Lcom/android/gallery3d/ui/CropView;Z)Z

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 722
    :cond_1
    :goto_0
    return v2

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1700(Lcom/android/gallery3d/ui/CropView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceX:F

    .line 693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mReferenceY:F

    .line 694
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setMovingEdges(Landroid/view/MotionEvent;)V

    .line 695
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    goto :goto_0

    .line 700
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1700(Lcom/android/gallery3d/ui/CropView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->moveEdges(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 706
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1700(Lcom/android/gallery3d/ui/CropView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #setter for: Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/CropView;->access$1702(Lcom/android/gallery3d/ui/CropView;Z)Z

    .line 709
    iput v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    goto :goto_0

    .line 712
    :cond_2
    iput v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mMovingEdges:I

    .line 713
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 715
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mNormalFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v1}, Lcom/android/gallery3d/ui/CropView;->access$1600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/CropView;->access$1302(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 717
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x3f80

    .line 727
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    .line 728
    .local v7, r:Landroid/graphics/RectF;
    iget v0, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    iget v1, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    iget v2, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 729
    invoke-direct {p0, p1, v7}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->drawHighlightRectangle(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;)V

    .line 730
    const/4 v6, 0x2

    .line 731
    .local v6, inset:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    sub-int v2, v1, v6

    iget v1, v7, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sub-int v3, v1, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mCropCross:Lcom/android/gallery3d/ui/ResourceTexture;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$1800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/ResourceTexture;

    move-result-object v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 757
    return-void
.end method

.method public setInitRectangle()V
    .locals 8

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v7, 0x3f00

    .line 519
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v4}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v4

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move v1, v3

    .line 522
    .local v1, targetRatio:F
    :goto_0
    const v2, 0x3e99999a

    .line 523
    .local v2, w:F
    const v0, 0x3e99999a

    .line 524
    .local v0, h:F
    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 525
    div-float v0, v2, v1

    .line 529
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    sub-float v4, v7, v2

    sub-float v5, v7, v0

    add-float v6, v7, v2

    add-float/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 530
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #calls: Lcom/android/gallery3d/ui/CropView;->updateCropSizeText()V
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView;->access$1100(Lcom/android/gallery3d/ui/CropView;)V

    .line 531
    return-void

    .line 519
    .end local v0           #h:F
    .end local v1           #targetRatio:F
    .end local v2           #w:F
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F
    invoke-static {v4}, Lcom/android/gallery3d/ui/CropView;->access$700(Lcom/android/gallery3d/ui/CropView;)F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageHeight:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mImageWidth:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView;->access$400(Lcom/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    goto :goto_0

    .line 527
    .restart local v0       #h:F
    .restart local v1       #targetRatio:F
    .restart local v2       #w:F
    :cond_1
    mul-float v2, v0, v1

    goto :goto_1
.end method

.method public setRectangle(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "faceRect"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->this$0:Lcom/android/gallery3d/ui/CropView;

    #getter for: Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->startParkingAnimation(Landroid/graphics/RectF;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->invalidate()V

    .line 537
    return-void
.end method
