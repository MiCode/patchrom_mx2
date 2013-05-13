.class Landroid/inputmethodservice/InputMethodService$Smile;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Smile"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/String;

.field resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "label"
    .parameter "resId"

    .prologue
    .line 2478
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2479
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$Smile;->label:Ljava/lang/String;

    .line 2480
    iput p2, p0, Landroid/inputmethodservice/InputMethodService$Smile;->resId:I

    .line 2481
    return-void
.end method
