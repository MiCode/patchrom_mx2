.class public Lcom/meizu/widget/LockDigitView$CellInfo;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellInfo"
.end annotation


# instance fields
.field final enabled:Z

.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter "label"
    .parameter "icon"
    .parameter "enabled"

    .prologue
    .line 612
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/meizu/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    .line 614
    iput-object p2, p0, Lcom/meizu/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 615
    iput-boolean p3, p0, Lcom/meizu/widget/LockDigitView$CellInfo;->enabled:Z

    .line 616
    return-void
.end method
