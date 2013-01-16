.class Landroid/webkit/WebViewClassic$MagnifierFingerController;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierFingerController"
.end annotation


# instance fields
.field private final mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 1325
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 1355
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    .line 1328
    const/4 v6, 0x4

    new-array v1, v6, [I

    .line 1329
    .local v1, handles:[I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V
    invoke-static {v6, v1}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;[I)V

    .line 1330
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v3

    .line 1331
    .local v3, rectLeft:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x1

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v5

    .line 1332
    .local v5, rectTop:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x2

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v4

    .line 1333
    .local v4, rectRight:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x3

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v2

    .line 1334
    .local v2, rectBottom:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    int-to-float v8, v4

    int-to-float v9, v2

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1335
    .local v0, bounds:Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 1336
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    .line 1339
    :goto_0
    return-void

    .line 1338
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 0
    .parameter "hitDirection"

    .prologue
    .line 1346
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewClassic$MagnifierFingerController;->updatePosition(I)V

    .line 1347
    return-void
.end method

.method public show(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1342
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v4, 0x3f80

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    .line 1343
    return-void
.end method

.method public updatePosition(I)V
    .locals 9
    .parameter "hitDirection"

    .prologue
    .line 1358
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-ne v4, p1, :cond_1

    .line 1359
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    sub-int v2, v4, v5

    .line 1360
    .local v2, left:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingTextQuad:Landroid/webkit/QuadF;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/QuadF;

    move-result-object v5

    iget-object v5, v5, Landroid/webkit/QuadF;->p1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    sub-int v3, v4, v5

    .line 1361
    .local v3, top:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectDraggingCursor:Landroid/graphics/Point;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    sub-int v0, v4, v5

    .line 1362
    .local v0, bottom:I
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v5, v3

    int-to-float v6, v2

    int-to-float v7, v0

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1363
    .local v1, bounds:Landroid/graphics/RectF;
    iget-object v4, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v5, p0, Landroid/webkit/WebViewClassic$MagnifierFingerController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/high16 v8, 0x3f80

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    .line 1365
    .end local v0           #bottom:I
    .end local v1           #bounds:Landroid/graphics/RectF;
    .end local v2           #left:I
    .end local v3           #top:I
    :cond_1
    return-void
.end method
