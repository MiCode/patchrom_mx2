.class Landroid/inputmethodservice/InputMethodService$SmileView$Smile;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService$SmileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Smile"
.end annotation


# instance fields
.field clip:Landroid/graphics/Rect;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/String;

.field resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "label"
    .parameter "resId"

    .prologue
    .line 2669
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2670
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->label:Ljava/lang/String;

    .line 2671
    iput p2, p0, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->resId:I

    .line 2672
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService$SmileView$Smile;->clip:Landroid/graphics/Rect;

    .line 2673
    return-void
.end method
