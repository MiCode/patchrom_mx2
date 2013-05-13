.class Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "e"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 995
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v6, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$502(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Lcom/android/gallery3d/photoeditor/actions/Doodle;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 1000
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1001
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v6

    mul-float v0, v5, v6

    .line 1002
    .local v0, doodleDownX:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v6

    mul-float v1, v5, v6

    .line 1003
    .local v1, doodleDownY:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v6

    mul-float v2, v5, v6

    .line 1004
    .local v2, doodleUpX:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v6

    mul-float v3, v5, v6

    .line 1006
    .local v3, doodleUpY:F
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;
    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$600(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapDisplayPoint(FFLandroid/graphics/PointF;)V

    .line 1007
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;
    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$700(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapDisplayPoint(FFLandroid/graphics/PointF;)V

    .line 1009
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    #calls: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkLongPressPoint(FF)Z
    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$800(Lcom/android/gallery3d/photoeditor/actions/DoodleView;FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    const/4 v6, 0x1

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z
    invoke-static {v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$902(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Z)Z

    .line 1014
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1000(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1015
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    .line 1016
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    #calls: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    invoke-static {v6, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1100(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 1015
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1019
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1032
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$600(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetY:F
    invoke-static {v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1602(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F

    .line 1033
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$600(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetX:F
    invoke-static {v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1702(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F

    .line 1034
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    #calls: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDragRectPoint(FF)V
    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1800(Lcom/android/gallery3d/photoeditor/actions/DoodleView;FF)V

    .line 1038
    :goto_2
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    const/4 v6, -0x1

    invoke-virtual {v5, v9, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->performHapticFeedback(II)Z

    .line 1039
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto/16 :goto_0

    .line 1023
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->actionLineLength:F
    invoke-static {v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1300(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F
    invoke-static {v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)F

    move-result v7

    div-float/2addr v6, v7

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F
    invoke-static {v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1202(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F

    .line 1024
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F
    invoke-static {v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1200(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    .line 1025
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F
    invoke-static {v5, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1202(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F

    .line 1027
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    #calls: Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDragLinePoint(FF)V
    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->access$1500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;FF)V

    goto :goto_2

    .line 1019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
