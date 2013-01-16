.class Landroid/webkit/WebViewCore$MagnifyHrefsShowData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagnifyHrefsShowData"
.end annotation


# instance fields
.field public mMagnifyHrefsRect:Landroid/graphics/Rect;

.field public mPicScale:F

.field public mPicture:Landroid/graphics/Picture;

.field public mViewLastTouchX:I

.field public mViewLastTouchY:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;Landroid/graphics/Picture;F)V
    .locals 0
    .parameter "viewLastTouchX"
    .parameter "viewLastTouchY"
    .parameter "rt"
    .parameter "pic"
    .parameter "scale"

    .prologue
    .line 1087
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    iput p1, p0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mViewLastTouchX:I

    .line 1089
    iput p2, p0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mViewLastTouchY:I

    .line 1090
    iput-object p3, p0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mMagnifyHrefsRect:Landroid/graphics/Rect;

    .line 1091
    iput-object p4, p0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mPicture:Landroid/graphics/Picture;

    .line 1092
    iput p5, p0, Landroid/webkit/WebViewCore$MagnifyHrefsShowData;->mPicScale:F

    .line 1093
    return-void
.end method
