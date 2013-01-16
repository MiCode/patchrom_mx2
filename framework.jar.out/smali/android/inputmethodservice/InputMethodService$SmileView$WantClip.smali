.class Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService$SmileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WantClip"
.end annotation


# instance fields
.field final height:I

.field final rowCount:I

.field final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "rowCount"

    .prologue
    .line 2679
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2680
    iput p1, p0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->width:I

    .line 2681
    iput p2, p0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->height:I

    .line 2682
    iput p3, p0, Landroid/inputmethodservice/InputMethodService$SmileView$WantClip;->rowCount:I

    .line 2683
    return-void
.end method
