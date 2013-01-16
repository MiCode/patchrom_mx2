.class public Landroid/webkit/WebViewClassic$MagnifierHrefsController;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierHrefsController"
.end annotation


# instance fields
.field private final mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter

    .prologue
    .line 1403
    iput-object p1, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1404
    new-instance v0, Landroid/webkit/MagnifierHrefsPopupWindow;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/webkit/MagnifierHrefsPopupWindow;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;)V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

    .line 1405
    return-void
.end method


# virtual methods
.method public getPicScale()F
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->getPicScale()F

    move-result v0

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->dismiss()V

    .line 1425
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/MagnifierHrefsPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show(IILandroid/graphics/Rect;Landroid/graphics/Picture;F)V
    .locals 7
    .parameter "viewLastTouchX"
    .parameter "viewLastTouchY"
    .parameter "rt"
    .parameter "picture"
    .parameter "picScale"

    .prologue
    .line 1408
    iget-object v0, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->mMagnifierHrefs:Landroid/webkit/MagnifierHrefsPopupWindow;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$MagnifierHrefsController;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/MagnifierHrefsPopupWindow;->showMagnifier(Landroid/view/View;IILandroid/graphics/Rect;Landroid/graphics/Picture;F)V

    .line 1409
    return-void
.end method
