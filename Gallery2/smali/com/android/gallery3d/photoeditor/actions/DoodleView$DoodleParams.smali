.class Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;
.super Ljava/lang/Object;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoodleParams"
.end annotation


# instance fields
.field public doodleColor:I

.field public doodleColorAlpha:I

.field public doodlePaintSize:F

.field public eraserPaintSize:F

.field public selectedShapeId:I

.field public selectedTextId:I

.field public shapeColor:I

.field public textColor:I

.field public textSize:F

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
