.class Landroid/webkit/WebViewClassic$PrivateHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewInputDispatcher$UiCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 9015
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreviousHitTest()V
    .locals 2

    .prologue
    .line 9615
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$7600(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 9616
    return-void
.end method

.method public dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 9577
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V

    .line 9578
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 9582
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 9572
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PrivateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 51
    .parameter "msg"

    .prologue
    .line 9032
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9568
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 9036
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3500(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_0

    .line 9041
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 9565
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 9043
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9047
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 9051
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9052
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 9056
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3600(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3700(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_3

    .line 9057
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$3802(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 9060
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3900(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_4

    .line 9061
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3600(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$3700(Landroid/webkit/WebViewClassic;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebViewClassic;->access$4000(Landroid/webkit/WebViewClassic;IIZI)Z

    .line 9066
    :goto_1
    const/16 v2, 0xb

    const-wide/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebViewClassic$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9063
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$3600(Landroid/webkit/WebViewClassic;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$4100(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$3700(Landroid/webkit/WebViewClassic;)I

    move-result v5

    add-int/2addr v4, v5

    #calls: Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;II)V

    goto :goto_1

    .line 9072
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mInTouch:Z

    if-nez v2, :cond_0

    .line 9073
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9074
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    #calls: Landroid/webkit/WebViewClassic;->showOptionWindow(Landroid/view/View;)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;Landroid/view/View;)V

    goto/16 :goto_0

    .line 9082
    :sswitch_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 9085
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v22

    .line 9086
    .local v22, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9091
    .end local v22           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/graphics/Point;

    .line 9092
    .local v34, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v34

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v34

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_6

    const/4 v2, 0x1

    :goto_2
    #calls: Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V
    invoke-static {v3, v4, v5, v2}, Landroid/webkit/WebViewClassic;->access$4400(Landroid/webkit/WebViewClassic;IIZ)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 9096
    .end local v34           #p:Landroid/graphics/Point;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/webkit/WebViewCore$ViewState;

    .line 9098
    .local v45, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v3

    move-object/from16 v0, v45

    iget v4, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v45

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    .line 9102
    .end local v45           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 9103
    .local v13, density:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    .line 9108
    .end local v13           #density:F
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/webkit/WebViewCore$DrawData;

    .line 9109
    .local v16, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    .line 9114
    .end local v16           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_9
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 9116
    .local v17, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/WindowManager;

    .line 9118
    .local v48, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v48 .. v48}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 9119
    .local v15, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v15}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v4

    move-object/from16 v0, v17

    #calls: Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v3, v0, v4}, Landroid/webkit/WebViewClassic;->access$4500(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V

    .line 9121
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 9122
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 9123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$4602(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 9125
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9126
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$4900(IZ)V

    .line 9128
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/webkit/WebViewInputDispatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getInputDispatcherCallbacks()Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/webkit/WebViewInputDispatcher;-><init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V

    #setter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$402(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;

    goto/16 :goto_0

    .line 9148
    .end local v15           #display:Landroid/view/Display;
    .end local v17           #drawableDir:Ljava/lang/String;
    .end local v48           #windowManager:Landroid/view/WindowManager;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mTextChangeFromNative:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$502(Landroid/webkit/WebViewClassic;Z)Z

    .line 9149
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 9150
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 9151
    .local v40, text:Ljava/lang/String;
    if-nez v40, :cond_9

    .line 9152
    const-string v40, ""

    .line 9154
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_a

    .line 9156
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;II)V

    .line 9159
    .end local v40           #text:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextChangeFromNative:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$502(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 9162
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewEditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewEditText;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9164
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v3, v4, v5, v2}, Landroid/webkit/WebViewClassic;->access$5100(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 9169
    :sswitch_c
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 9170
    .local v14, direction:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v18

    .line 9171
    .local v18, focusSearch:Landroid/view/View;
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_0

    .line 9172
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 9176
    .end local v14           #direction:I
    .end local v18           #focusSearch:Landroid/view/View;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    .line 9177
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 9178
    .local v23, initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5002(Landroid/webkit/WebViewClassic;I)I

    .line 9179
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 9180
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextSize:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldTextSize:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5202(Landroid/webkit/WebViewClassic;I)I

    .line 9182
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->focusNodeBouds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9183
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingLeft:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingLeft:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5302(Landroid/webkit/WebViewClassic;I)I

    .line 9184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingTop:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingTop:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5402(Landroid/webkit/WebViewClassic;I)I

    .line 9185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingRight:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingRight:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5502(Landroid/webkit/WebViewClassic;I)I

    .line 9186
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingBottom:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingBottom:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5602(Landroid/webkit/WebViewClassic;I)I

    .line 9187
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v3, v2, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    .line 9188
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v3, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, v4, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebViewClassic;->access$5700(IILandroid/graphics/Rect;)V

    .line 9190
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9191
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5800(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9193
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->updateWebTextViewPadding()V

    goto/16 :goto_0

    .line 9198
    .end local v23           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->clearTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9201
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/graphics/Rect;

    .line 9202
    .local v36, r:Landroid/graphics/Rect;
    if-nez v36, :cond_c

    .line 9203
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 9207
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebViewClassic;->access$6000(Landroid/webkit/WebViewClassic;IIII)V

    goto/16 :goto_0

    .line 9212
    .end local v36           #r:Landroid/graphics/Rect;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 9213
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/widget/ArrayAdapter;

    .line 9214
    .local v8, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 9221
    .end local v8           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mGotCenterDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$6102(Landroid/webkit/WebViewClassic;Z)Z

    .line 9222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTrackballDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$6202(Landroid/webkit/WebViewClassic;Z)Z

    .line 9223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 9227
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 9231
    :sswitch_13
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_e

    .line 9232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9235
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$6400(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 9240
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x2

    #setter for: Landroid/webkit/WebViewClassic;->mHeldMotionless:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$6502(Landroid/webkit/WebViewClassic;I)I

    .line 9241
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 9245
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    .line 9249
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 9251
    .local v26, layerId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 9252
    .local v42, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    move/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->enterFullScreenVideo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 9258
    .end local v26           #layerId:I
    .end local v42           #url:Ljava/lang/String;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9259
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    goto/16 :goto_0

    .line 9264
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/view/View;

    .line 9265
    .local v43, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 9266
    .local v33, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 9268
    .local v32, npp:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 9269
    const-string/jumbo v2, "webview"

    const-string v3, "Should not have another full screen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9270
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6800(Landroid/webkit/WebViewClassic;)V

    .line 9272
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-direct {v3, v4, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebViewClassic;II)V

    iput-object v3, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 9273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 9274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    .line 9275
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 9280
    .end local v32           #npp:I
    .end local v33           #orientation:I
    .end local v43           #view:Landroid/view/View;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9284
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/webkit/WebViewCore$ShowRectData;

    .line 9285
    .local v12, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v27

    .line 9286
    .local v27, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v47

    .line 9287
    .local v47, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v31

    .line 9288
    .local v31, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v46

    .line 9289
    .local v46, viewWidth:I
    move/from16 v0, v27

    int-to-float v2, v0

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v47

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v46

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v49, v0

    .line 9300
    .local v49, x:I
    const/4 v2, 0x0

    add-int v3, v49, v46

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v46

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v49

    .line 9302
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v41

    .line 9303
    .local v41, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v19

    .line 9304
    .local v19, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v30

    .line 9305
    .local v30, maxHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v44

    .line 9306
    .local v44, viewHeight:I
    move/from16 v0, v41

    int-to-float v2, v0

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v12, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v44

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v50, v0

    .line 9317
    .local v50, y:I
    const/4 v2, 0x0

    add-int v3, v50, v44

    move/from16 v0, v30

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v44

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 9321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6900(Landroid/webkit/WebViewClassic;)I

    move-result v3

    sub-int v3, v50, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 9322
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    .line 9327
    .end local v12           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v19           #height:I
    .end local v27           #left:I
    .end local v30           #maxHeight:I
    .end local v31           #maxWidth:I
    .end local v41           #top:I
    .end local v44           #viewHeight:I
    .end local v46           #viewWidth:I
    .end local v47           #width:I
    .end local v49           #x:I
    .end local v50           #y:I
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/webkit/WebViewClassic;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 9331
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$7002(Landroid/webkit/WebViewClassic;I)I

    .line 9332
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$7102(Landroid/webkit/WebViewClassic;I)I

    goto/16 :goto_0

    .line 9336
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->isAccessibilityEnabled()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7200(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9337
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7300(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkit/AccessibilityInjector;->handleSelectionChangedIfNecessary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9343
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v4

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 9344
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v2, :cond_11

    .line 9345
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 9349
    :cond_11
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 9350
    .local v20, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v20

    #setter for: Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$7402(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 9351
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v20

    #calls: Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$7500(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 9352
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v20

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$7600(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_0

    .line 9343
    .end local v20           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    :cond_12
    const/4 v2, 0x0

    goto :goto_5

    .line 9356
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 9357
    .local v39, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 9358
    move-object/from16 v0, v39

    iget-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9363
    .end local v39           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3, v2}, Landroid/webkit/WebViewClassic;->access$3202(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 9364
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_13

    .line 9365
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setAutoFillable(I)V

    .line 9366
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/AutoCompletePopup;->setAutoFillQueryId(I)V

    .line 9368
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    if-eqz v2, :cond_0

    .line 9369
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->rebuildWebTextView()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9374
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9375
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 9376
    .local v35, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090100

    move-object/from16 v0, v35

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 9384
    .end local v35           #pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v3, v2}, Landroid/webkit/WebViewClassic;->access$7800(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9388
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_0

    .line 9389
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$302(Landroid/webkit/WebViewClassic;Z)Z

    .line 9390
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 9391
    .restart local v23       #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5002(Landroid/webkit/WebViewClassic;I)I

    .line 9392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mTextChangeFromNative:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$502(Landroid/webkit/WebViewClassic;Z)Z

    .line 9393
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 9394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextSize:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldTextSize:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5202(Landroid/webkit/WebViewClassic;I)I

    .line 9395
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V

    .line 9396
    const-string v2, "WebEditText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INIT_EDIT_FIELD text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  selection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mSelectionStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mSelectionEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mSelectionStart:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mSelectionEnd:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;II)V

    .line 9400
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9401
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingLeft:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingLeft:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5302(Landroid/webkit/WebViewClassic;I)I

    .line 9402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingTop:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingTop:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5402(Landroid/webkit/WebViewClassic;I)I

    .line 9403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingRight:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingRight:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5502(Landroid/webkit/WebViewClassic;I)I

    .line 9404
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mTextPaddingBottom:I

    #setter for: Landroid/webkit/WebViewClassic;->mTextPaddingBottom:I
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$5602(Landroid/webkit/WebViewClassic;I)I

    .line 9405
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v3, v2, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    .line 9406
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v3, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v4, v4, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebViewClassic;->access$5700(IILandroid/graphics/Rect;)V

    .line 9408
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9409
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->rebuildWebTextView()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)V

    .line 9410
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    if-eqz v2, :cond_14

    .line 9411
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic$WebViewEditText;->setVisibility(I)V

    .line 9413
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mWebEditText:Landroid/webkit/WebViewClassic$WebViewEditText;

    if-eqz v2, :cond_15

    .line 9414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    #calls: Landroid/webkit/WebViewClassic;->initWebTextView(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$TextFieldInitData;)V

    .line 9416
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)V

    .line 9417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextChangeFromNative:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewClassic;->access$502(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 9422
    .end local v23           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 9423
    .local v37, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-nez v37, :cond_16

    .line 9424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    goto/16 :goto_0

    .line 9427
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v2

    move-object/from16 v0, v37

    if-ne v0, v2, :cond_0

    .line 9429
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v3

    monitor-enter v3

    .line 9430
    :try_start_0
    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    move/from16 v28, v0

    .line 9431
    .local v28, matchCount:I
    move-object/from16 v0, v37

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    move/from16 v29, v0

    .line 9432
    .local v29, matchIndex:I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 9434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v2, v0, v1, v3}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 9436
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9437
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v29

    move/from16 v1, v28

    invoke-interface {v2, v0, v1, v3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_0

    .line 9432
    .end local v28           #matchCount:I
    .end local v29           #matchIndex:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 9444
    .end local v37           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9445
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 9450
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v3, 0xdf

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9454
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9458
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0xc0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 9463
    :sswitch_2a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 9464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 9469
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9470
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8500(Landroid/webkit/WebViewClassic;)Z

    .line 9471
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)V

    .line 9472
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->showPasteWindow()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 9491
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9492
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 9493
    .local v10, contentX:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 9494
    .local v11, contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v10}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v24, v0

    .line 9495
    .local v24, lastTouchX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v25, v0

    .line 9496
    .local v25, lastTouchY:F
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    .line 9497
    .local v9, bounds:Landroid/graphics/Rect;
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 9506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(ZLandroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 9508
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9514
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v10           #contentX:I
    .end local v11           #contentY:I
    .end local v24           #lastTouchX:F
    .end local v25           #lastTouchY:F
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9515
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 9516
    .restart local v10       #contentX:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 9517
    .restart local v11       #contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v10}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v24, v0

    .line 9518
    .restart local v24       #lastTouchX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v25, v0

    .line 9519
    .restart local v25       #lastTouchY:F
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    .line 9520
    .restart local v9       #bounds:Landroid/graphics/Rect;
    if-eqz v9, :cond_19

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 9521
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(ZLandroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 9523
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9529
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v10           #contentX:I
    .end local v11           #contentY:I
    .end local v24           #lastTouchX:F
    .end local v25           #lastTouchY:F
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9530
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 9531
    .restart local v10       #contentX:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 9532
    .restart local v11       #contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v10}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v24, v0

    .line 9533
    .restart local v24       #lastTouchX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v11}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v25, v0

    .line 9534
    .restart local v25       #lastTouchY:F
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Rect;

    .line 9535
    .restart local v9       #bounds:Landroid/graphics/Rect;
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 9536
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->useNewRender()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 9537
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v9, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(Landroid/graphics/Rect;FF)V

    goto/16 :goto_0

    .line 9539
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/webkit/ZoomManager;->handleDoubleTapOnImage(ZLandroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 9541
    :cond_1b
    if-eqz v9, :cond_1c

    iget v2, v9, Landroid/graphics/Rect;->left:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_1c

    iget v2, v9, Landroid/graphics/Rect;->top:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1c

    iget v2, v9, Landroid/graphics/Rect;->right:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1c

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1c

    .line 9544
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/webkit/WebViewClassic;->mDoubleTapLeftEdge:I

    .line 9545
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9547
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ZoomManager;->handleDoubleTapHalfBottom(FF)V

    goto/16 :goto_0

    .line 9553
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v10           #contentX:I
    .end local v11           #contentY:I
    .end local v24           #lastTouchX:F
    .end local v25           #lastTouchY:F
    :sswitch_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;

    .line 9555
    .local v38, sData:Landroid/webkit/WebViewCore$MagnifyHrefsShowData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getMagnifierHrefsController()Landroid/webkit/WebViewClassic$MagnifierHrefsController;

    move-result-object v2

    move-object/from16 v0, v38

    iget v3, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mViewLastTouchX:I

    move-object/from16 v0, v38

    iget v4, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mViewLastTouchY:I

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mMagnifyHrefsRect:Landroid/graphics/Rect;

    move-object/from16 v0, v38

    iget-object v6, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mPicture:Landroid/graphics/Picture;

    move-object/from16 v0, v38

    iget v7, v0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mPicScale:F

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->show(IILandroid/graphics/Rect;Landroid/graphics/Picture;F)V

    goto/16 :goto_0

    .line 9560
    .end local v38           #sData:Landroid/webkit/WebViewCore$MagnifyHrefsShowData;
    :sswitch_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 9561
    .local v21, hitTest:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic;->processMagnifyHrefsLongClick(Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_0

    .line 9041
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_10
        0x8 -> :sswitch_14
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0x65 -> :sswitch_5
        0x69 -> :sswitch_8
        0x6a -> :sswitch_d
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6d -> :sswitch_6
        0x6e -> :sswitch_c
        0x6f -> :sswitch_e
        0x70 -> :sswitch_b
        0x71 -> :sswitch_1a
        0x72 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_f
        0x76 -> :sswitch_13
        0x78 -> :sswitch_18
        0x79 -> :sswitch_19
        0x7e -> :sswitch_25
        0x7f -> :sswitch_1b
        0x81 -> :sswitch_1c
        0x82 -> :sswitch_1d
        0x83 -> :sswitch_1f
        0x84 -> :sswitch_20
        0x85 -> :sswitch_21
        0x86 -> :sswitch_22
        0x88 -> :sswitch_15
        0x89 -> :sswitch_16
        0x8b -> :sswitch_7
        0x8c -> :sswitch_17
        0x8d -> :sswitch_23
        0x8e -> :sswitch_24
        0x90 -> :sswitch_26
        0x91 -> :sswitch_27
        0x92 -> :sswitch_28
        0x93 -> :sswitch_1e
        0x94 -> :sswitch_29
        0x95 -> :sswitch_0
        0x96 -> :sswitch_2a
        0x97 -> :sswitch_2b
        0x98 -> :sswitch_0
        0x99 -> :sswitch_2c
        0x9a -> :sswitch_2d
        0x9b -> :sswitch_2e
        0x9c -> :sswitch_2f
        0x9d -> :sswitch_30
    .end sparse-switch
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 9620
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/MzOverScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/MzOverScroller;

    invoke-virtual {v0}, Landroid/widget/MzOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9621
    const/4 v0, 0x1

    .line 9623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 9587
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9602
    :goto_0
    return v0

    .line 9590
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)V

    .line 9591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 9592
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 9594
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9595
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .local v0, isPressingHandle:Z
    goto :goto_0

    .line 9598
    .end local v0           #isPressingHandle:Z
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$2900(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3000(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isPressingHandle:Z
    :cond_3
    goto :goto_0
.end method

.method public showTapHighlight(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 9607
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8900(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9608
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0, p1}, Landroid/webkit/WebViewClassic;->access$8902(Landroid/webkit/WebViewClassic;Z)Z

    .line 9609
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9611
    :cond_0
    return-void
.end method
