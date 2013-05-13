.class public Lcom/android/gallery3d/photoeditor/actions/DoodleView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;,
        Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;,
        Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;,
        Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;
    }
.end annotation


# instance fields
.field private actionLineLength:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private colorPickCanvas:Landroid/graphics/Canvas;

.field private colorPickFilter:Landroid/graphics/Bitmap;

.field private final colorPickPadding:I

.field private colorPickPath:Landroid/graphics/Path;

.field private colorPickResource:Landroid/graphics/Bitmap;

.field private final displayMatrix:Landroid/graphics/Matrix;

.field private doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

.field private final doodlePaint:Landroid/graphics/Paint;

.field private doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

.field private doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

.field private dragFirstPoint:Landroid/graphics/PointF;

.field private dragLastPoint:Landroid/graphics/PointF;

.field private dragLineRatio:F

.field private dragRectOffsetX:F

.field private dragRectOffsetY:F

.field private final drawingMatrix:Landroid/graphics/Matrix;

.field private final drawingPath:Landroid/graphics/Path;

.field private editTextList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final eraserPaint:Landroid/graphics/Paint;

.field private imageSourceBmp:Landroid/graphics/Bitmap;

.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private isColorPickerMode:Z

.field private isLongPress:Z

.field private final lastPoint:Landroid/graphics/PointF;

.field private lineDistanceX:F

.field private lineDistanceY:F

.field private lineLength:F

.field private lineShapeAngle:F

.field private listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

.field private longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

.field private mDoodleMode:I

.field private mDoodles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field

.field private mGuestureListenr:Landroid/view/GestureDetector;

.field private mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field private mPaintScale:F

.field private mRedoDoodles:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field

.field private mRedoFlag:Z

.field private mUndoFlag:Z

.field private magnifierCenterX:F

.field private magnifierCenterY:F

.field private oldBoundsHeight:F

.field private oldBoundsWidth:F

.field private shapeDownPoint:Landroid/graphics/PointF;

.field private shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

.field private final shapePaint:Landroid/graphics/Paint;

.field private shapeUpPoint:Landroid/graphics/PointF;

.field private sourceBmpCanvas:Landroid/graphics/Canvas;

.field private textDoodle:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    .line 87
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    .line 88
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createEraserPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    .line 89
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    .line 91
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    .line 92
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    .line 100
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    .line 104
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    .line 108
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 110
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    .line 124
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    .line 126
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    .line 127
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F

    .line 128
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetX:F

    .line 129
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetY:F

    .line 137
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    .line 147
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickPadding:I

    .line 415
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$3;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 151
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 152
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    .line 153
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$GestureListener;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mGuestureListenr:Landroid/view/GestureDetector;

    .line 154
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->actionLineLength:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDragLinePoint(FF)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetY:F

    return p1
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/photoeditor/actions/DoodleView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetX:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/photoeditor/actions/DoodleView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDragRectPoint(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Lcom/android/gallery3d/photoeditor/actions/Doodle;)Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/photoeditor/actions/DoodleView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkLongPressPoint(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/photoeditor/actions/DoodleView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z

    return p1
.end method

.method private addEditText(FF)V
    .locals 17
    .parameter "x"
    .parameter "y"

    .prologue
    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 282
    .local v4, group:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 284
    .local v3, edit:Landroid/widget/EditText;
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v10, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    .local v10, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 287
    .local v5, leftMargin:I
    const/16 v11, 0x1e

    .line 288
    .local v11, textViewMinWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v13, v13, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float v13, p2, v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 289
    .local v12, topMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 290
    .local v2, displaysLoactionY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 291
    .local v1, displaysLoactionX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v13, v13, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    if-ge v11, v13, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v13, v13, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 294
    :cond_0
    add-int v13, v5, v11

    int-to-float v13, v13

    int-to-float v14, v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 295
    int-to-float v13, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    sub-int v5, v13, v11

    .line 297
    :cond_1
    if-ge v12, v2, :cond_2

    .line 298
    move v12, v2

    .line 301
    :cond_2
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 302
    .local v9, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v13, v13, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 303
    int-to-float v13, v12

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v15

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    .line 304
    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v15

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 307
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 308
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setMinimumWidth(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v13, v13, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textColor:I

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setTextColor(I)V

    .line 310
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v14, v14, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    invoke-virtual {v3, v13, v14}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 311
    const/high16 v13, 0x200

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 312
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 314
    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setGravity(I)V

    .line 316
    int-to-float v13, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    add-float/2addr v13, v14

    int-to-float v14, v5

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 317
    .local v7, maxWidth:I
    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    add-float/2addr v13, v14

    int-to-float v14, v12

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 319
    .local v6, maxHeight:I
    iput v5, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 320
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 322
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 323
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 324
    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 327
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 328
    new-instance v13, Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$2;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v3, v14}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v13, :cond_4

    .line 351
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    .line 353
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v13, :cond_5

    .line 356
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 357
    .local v8, newPoint:Landroid/graphics/PointF;
    int-to-float v13, v5

    int-to-float v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v13, v8}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->changeDoodleFirstPoint(Landroid/graphics/PointF;)V

    .line 360
    .end local v8           #newPoint:Landroid/graphics/PointF;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    int-to-float v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    div-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    int-to-float v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    div-float/2addr v14, v15

    iput v14, v13, Landroid/graphics/PointF;->y:F

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addLastPointIntoDoodle()V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->finishDoodle()V

    .line 365
    .end local v1           #displaysLoactionX:I
    .end local v2           #displaysLoactionY:I
    .end local v3           #edit:Landroid/widget/EditText;
    .end local v4           #group:Landroid/widget/FrameLayout;
    .end local v5           #leftMargin:I
    .end local v6           #maxHeight:I
    .end local v7           #maxWidth:I
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v10           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #textViewMinWidth:I
    .end local v12           #topMargin:I
    :cond_6
    return-void
.end method

.method private addLastPointIntoDoodle()V
    .locals 4

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->addControlPoint(Landroid/graphics/PointF;)Z

    .line 512
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleChanged(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 517
    :cond_1
    return-void
.end method

.method private addTextString()V
    .locals 3

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkEditTextState()V

    .line 387
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 391
    :cond_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleTextStringAdd(ILjava/lang/String;)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calculateFilterXY(FFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "isFinish"

    .prologue
    const/4 v1, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v0

    mul-float/2addr v0, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    .line 790
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v0

    mul-float/2addr v0, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :goto_1
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    .line 791
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    .line 792
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    if-eqz v0, :cond_0

    .line 795
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;->onDoodleColorPickChange(IZ)V

    .line 799
    if-nez p3, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    if-nez v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    .line 806
    :cond_1
    return-void

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_0

    .line 790
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v0

    mul-float v1, p2, v0

    goto :goto_1

    .line 791
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    goto :goto_2

    .line 792
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    goto :goto_3

    .line 799
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private checkEditTextState()V
    .locals 4

    .prologue
    .line 394
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 409
    :cond_0
    return-void

    .line 396
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, textString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->removeEditText(Landroid/widget/EditText;)V

    .line 400
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 401
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v2, :cond_3

    .line 404
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v2, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleTextStringDelete(I)V

    .line 405
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v2, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onTextDoodleRemoved(I)V

    .line 396
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkLongPressPoint(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 849
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkShapeRectLongPress(FF)Z

    move-result v0

    :goto_0
    return v0

    .line 845
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkShapeLineLongPress(FF)Z

    move-result v0

    goto :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkShapeLineLongPress(FF)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceY:F

    .line 869
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceX:F

    .line 870
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceX:F

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceY:F

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    .line 872
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 873
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 874
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->actionLineLength:F

    .line 877
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceY:F

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineDistanceX:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineShapeAngle:F

    .line 879
    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 882
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineShapeAngle:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 885
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->actionLineLength:F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    .line 886
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    div-float v1, v3, v1

    .line 888
    const/high16 v3, 0x41f0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 889
    const/4 v0, 0x1

    .line 891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShapeRectLongPress(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 856
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 857
    .local v2, minX:F
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 858
    .local v0, maxX:F
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 859
    .local v3, minY:F
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 860
    .local v1, maxY:F
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    cmpg-float v4, p2, v1

    if-gtz v4, :cond_0

    .line 861
    const/4 v4, 0x1

    .line 863
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private dragToDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 812
    :cond_0
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 813
    .local v4, firstPoint:Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 814
    .local v5, lastPoint:Landroid/graphics/PointF;
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 815
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0
.end method

.method private drawAllDoodles(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 709
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 710
    .local v2, r:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 712
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    .line 714
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 720
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 721
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/photoeditor/actions/Doodle;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 722
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 723
    .local v0, item:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    if-eqz v0, :cond_2

    .line 724
    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    goto :goto_1

    .line 716
    .end local v0           #item:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/photoeditor/actions/Doodle;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 728
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/photoeditor/actions/Doodle;>;"
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 729
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 730
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 731
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 733
    return-void
.end method

.method private drawColorPickFilter(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v5, 0x4180

    const/4 v10, 0x0

    .line 895
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 896
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 897
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 900
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 901
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 903
    const/high16 v0, 0x41a0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 905
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 906
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, v6, 0x8

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 907
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, v7, 0x8

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 908
    iget v0, v8, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v6, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 909
    iget v0, v8, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v7, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 911
    new-instance v9, Landroid/graphics/Rect;

    sub-int v0, v6, v2

    sub-int v1, v7, v2

    invoke-direct {v9, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 913
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 914
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 915
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickFilter:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 917
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 918
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    .line 919
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v2, 0x4

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 920
    iget v0, v8, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v2, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 921
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v3, v0, 0x4

    .line 922
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v2

    sub-int v3, v7, v3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 933
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 934
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 936
    iput v10, v8, Landroid/graphics/Rect;->top:I

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 937
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 938
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 939
    iput v10, v9, Landroid/graphics/Rect;->top:I

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 940
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 941
    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 942
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 944
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 945
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v7, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 946
    iget v0, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 947
    neg-int v0, v7

    div-int/lit8 v0, v0, 0x2

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 948
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 949
    iget v0, v9, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v6, 0x2

    add-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 950
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->magnifierCenterX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, v6, 0x2

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 953
    :cond_1
    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 954
    iget v0, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 955
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickFilter:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 957
    return-void

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_3

    .line 924
    iget v0, v8, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v2, 0x4

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 925
    iget v0, v8, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v2, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 926
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x4

    .line 927
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    sub-int v1, v6, v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 928
    :cond_3
    iget v0, v8, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    .line 929
    iget v0, v8, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v2, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 930
    iget v0, v8, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v2, 0x4

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 931
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v2

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawDoodle(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 219
    :cond_0
    return-void
.end method

.method private drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 7
    .parameter "canvas"
    .parameter "color"
    .parameter "selectedShapeId"
    .parameter "downPoint"
    .parameter "lastPoint"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 232
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;-><init>(Landroid/content/Context;FFLandroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 235
    return-void
.end method

.method private drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 7
    .parameter "doodle"

    .prologue
    .line 736
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 738
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 739
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 740
    .local v6, drawPaint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getPaintSize()F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 746
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 752
    .end local v6           #drawPaint:Landroid/graphics/Paint;
    :goto_1
    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createEraserPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 743
    .restart local v6       #drawPaint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 750
    .end local v6           #drawPaint:Landroid/graphics/Paint;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_1
.end method

.method private eraserDoodle(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    :cond_0
    return-void
.end method

.method private finishDoodle()V
    .locals 3

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 485
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectToDraw(Landroid/graphics/Canvas;)V

    .line 486
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleFinished(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    .line 490
    .local v0, isText:Z
    :goto_0
    if-nez v0, :cond_6

    .line 491
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    invoke-interface {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;->onDoodleModified()V

    .line 504
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 506
    .end local v0           #isText:Z
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 507
    return-void

    .line 489
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 501
    .restart local v0       #isText:Z
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getDragLinePoint(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 820
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v0, v2

    .line 821
    .local v0, offsetX:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v1, v2

    .line 822
    .local v1, offsetY:I
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineShapeAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 823
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLineRatio:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineShapeAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 825
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineShapeAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    neg-int v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 826
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineLength:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lineShapeAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    neg-int v5, v1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 827
    return-void

    .end local v0           #offsetX:I
    .end local v1           #offsetY:I
    :cond_0
    move v0, v3

    .line 820
    goto :goto_0

    .restart local v0       #offsetX:I
    :cond_1
    move v1, v3

    .line 821
    goto :goto_1
.end method

.method private getDragRectPoint(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 831
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v0, v2

    .line 832
    .local v0, offsetX:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v1, v2

    .line 833
    .local v1, offsetY:I
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetX:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 834
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragRectOffsetY:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 836
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 837
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeUpPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 838
    return-void

    .end local v0           #offsetX:I
    .end local v1           #offsetY:I
    :cond_0
    move v0, v3

    .line 831
    goto :goto_0

    .restart local v0       #offsetX:I
    :cond_1
    move v1, v3

    .line 832
    goto :goto_1
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 413
    return-void
.end method

.method private redo(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 759
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 760
    .local v0, doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleFinished(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 767
    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 769
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 770
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 771
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 772
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 774
    :cond_1
    return-void
.end method

.method private refreshDragDoodle()V
    .locals 4

    .prologue
    .line 777
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 778
    .local v0, firstPoint:Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 779
    .local v1, lastPoint:Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragFirstPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 780
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragLastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 782
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->changeDoodleFirstPoint(Landroid/graphics/PointF;)V

    .line 783
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->changeDoodleLastPoint(Landroid/graphics/PointF;)V

    .line 784
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 785
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 786
    return-void
.end method

.method private removeEditText(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 370
    .local v0, group:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 371
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 373
    .end local v0           #group:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private selectToDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 432
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    packed-switch v0, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 434
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawDoodle(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 439
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserDoodle(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v2, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->shapeColor:I

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v3, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->selectedShapeId:I

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setEditTextEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 383
    :cond_0
    return-void

    .line 379
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startDoodle()V
    .locals 11

    .prologue
    .line 454
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    packed-switch v0, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v3, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->eraserPaintSize:F

    .line 457
    .local v3, curPaintSize:F
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIFLandroid/graphics/PointF;F)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    goto :goto_0

    .line 462
    .end local v3           #curPaintSize:F
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v3, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodlePaintSize:F

    .line 463
    .restart local v3       #curPaintSize:F
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIFLandroid/graphics/PointF;F)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    goto :goto_0

    .line 468
    .end local v3           #curPaintSize:F
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 469
    .restart local v3       #curPaintSize:F
    new-instance v4, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v5, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->shapeColor:I

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v7, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->selectedShapeId:I

    new-instance v9, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIIFLandroid/graphics/PointF;F)V

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->setDoodleContext(Landroid/content/Context;)V

    goto :goto_0

    .line 475
    .end local v3           #curPaintSize:F
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v0, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float v3, v0, v1

    .line 476
    .restart local v3       #curPaintSize:F
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIFLandroid/graphics/PointF;F)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    goto/16 :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private undo(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawAllDoodles(Landroid/graphics/Canvas;)V

    .line 756
    return-void
.end method

.method private updateEditTextLocation(IIFF)V
    .locals 12
    .parameter "width"
    .parameter "height"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 238
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v9, :cond_0

    .line 277
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 244
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 246
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v9

    mul-float v6, v9, p3

    .line 247
    .local v6, scaleSize:F
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 249
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v9}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 250
    .local v5, point:Landroid/graphics/PointF;
    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 251
    .local v7, x:I
    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 252
    .local v8, y:I
    int-to-float v9, p1

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v7, v9

    .line 253
    int-to-float v9, p2

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    .line 255
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/widget/EditText;->getScaleX()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v7, v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 257
    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/widget/EditText;->getScaleY()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v8, v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 258
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    add-float/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 261
    .local v3, maxWidth:I
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    add-float/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 262
    .local v2, maxHeight:I
    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v10, v10, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 263
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v9, v9, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 265
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 266
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 271
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #point:Landroid/graphics/PointF;
    .end local v6           #scaleSize:F
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_2
    new-instance v9, Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public addInputMethodChangeListener()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 166
    return-void
.end method

.method public checkDoodleTextMode()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 648
    :cond_0
    return-void
.end method

.method public clearDoodles()V
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 1064
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1065
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleRmovedAll()V

    .line 1066
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 1068
    :cond_0
    return-void
.end method

.method public exitColorPickMode()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    .line 699
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    .line 701
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 702
    return-void
.end method

.method public getDoodleMode()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 961
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 962
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    if-eqz v0, :cond_1

    .line 963
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undo(Landroid/graphics/Canvas;)V

    .line 964
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    if-eqz v0, :cond_2

    .line 969
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redo(Landroid/graphics/Canvas;)V

    .line 970
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 975
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 976
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 977
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 978
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 980
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z

    if-eqz v0, :cond_4

    .line 981
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->dragToDraw(Landroid/graphics/Canvas;)V

    .line 985
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 987
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawColorPickFilter(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 983
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectToDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onSizeChanged(IIII)V

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v4

    invoke-direct {v0, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 177
    .local v0, r:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    .line 180
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v4, v3, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodlePaintSize:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodlePaintSize:F

    .line 181
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v4, v3, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->eraserPaintSize:F

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->eraserPaintSize:F

    .line 183
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v4, v4, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodlePaintSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v4, v4, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->eraserPaintSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    .line 189
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 190
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v6, v6, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v0, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 195
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsWidth:F

    .line 196
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsHeight:F

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 199
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    if-eqz v3, :cond_1

    .line 200
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->resetDrawingParams(FFLandroid/graphics/Paint;)V

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsWidth:F

    div-float v1, v3, v4

    .line 206
    .local v1, scaleX:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsHeight:F

    div-float v2, v3, v4

    .line 207
    .local v2, scaleY:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsWidth:F

    .line 208
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsHeight:F

    .line 209
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updateEditTextLocation(IIFF)V

    .line 210
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 521
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 523
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 526
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 528
    .local v3, y:F
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mGuestureListenr:Landroid/view/GestureDetector;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mGuestureListenr:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_0
    return v7

    .line 532
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 534
    :pswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 535
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    if-eqz v4, :cond_2

    .line 536
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->calculateFilterXY(FFZ)V

    .line 537
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto :goto_0

    .line 539
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 540
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    goto :goto_0

    .line 544
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v8

    .line 545
    .local v0, photoStartX:F
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v1, v4, v8

    .line 546
    .local v1, photoStartY:F
    cmpl-float v4, v2, v0

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->startDoodle()V

    .line 549
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addEditText(FF)V

    goto :goto_0

    .line 552
    .end local v0           #photoStartX:F
    .end local v1           #photoStartY:F
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->startDoodle()V

    goto :goto_0

    .line 558
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    if-eqz v4, :cond_5

    .line 559
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 560
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->calculateFilterXY(FFZ)V

    .line 561
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto/16 :goto_0

    .line 563
    :cond_5
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z

    if-nez v4, :cond_7

    .line 564
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 565
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 566
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addLastPointIntoDoodle()V

    goto/16 :goto_0

    .line 568
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto/16 :goto_0

    .line 571
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->longPressDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 580
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDragRectPoint(FF)V

    .line 584
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto/16 :goto_0

    .line 575
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getDragLinePoint(FF)V

    goto :goto_1

    .line 592
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    if-eqz v4, :cond_8

    .line 593
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 594
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v4, v5, v7}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->calculateFilterXY(FFZ)V

    .line 595
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto/16 :goto_0

    .line 597
    :cond_8
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z

    if-nez v4, :cond_9

    .line 598
    add-float v4, v2, v5

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 599
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addLastPointIntoDoodle()V

    .line 600
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->finishDoodle()V

    goto/16 :goto_0

    .line 602
    :cond_9
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 603
    iput-boolean v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isLongPress:Z

    .line 604
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->refreshDragDoodle()V

    goto/16 :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 571
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public redo(Z)Z
    .locals 2
    .parameter "redoFlag"

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, canRedo:Z
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 633
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    .line 634
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 636
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeInputMethodChangeListener()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 170
    return-void
.end method

.method public saveTextString()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    .line 653
    return-void
.end method

.method public setColorPickMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isColorPickerMode:Z

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    .line 688
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickResource:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickFilter:Landroid/graphics/Bitmap;

    .line 690
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickFilter:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickCanvas:Landroid/graphics/Canvas;

    .line 691
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->sourceBmpCanvas:Landroid/graphics/Canvas;

    .line 692
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->colorPickPath:Landroid/graphics/Path;

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->sourceBmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 695
    return-void
.end method

.method public setDoodlePaintAlpha(I)V
    .locals 4
    .parameter "alpha"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iput p1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColorAlpha:I

    .line 1081
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v2, v2, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v3, v3, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    .line 1083
    return-void
.end method

.method public setDoodlePaintColor(I)V
    .locals 5
    .parameter "color"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColorAlpha:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodleColor:I

    .line 1072
    return-void
.end method

.method public setDoodlePaintSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodlePaintSize:F

    .line 1076
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->doodlePaintSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1077
    return-void
.end method

.method public setEditMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 667
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 668
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 669
    return-void
.end method

.method public setEraserMode()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 659
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 660
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 661
    return-void
.end method

.method public setEraserPaintSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->eraserPaintSize:F

    .line 1058
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iget v1, v1, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->eraserPaintSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1059
    return-void
.end method

.method public setImageSourceBmp(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bmp"

    .prologue
    const/4 v2, 0x1

    .line 1097
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->imageSourceBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setOnDoodleChangeListener(Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    .line 158
    return-void
.end method

.method public setOnDoodleViewChanged(Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleViewChangeListener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleViewChanged;

    .line 162
    return-void
.end method

.method public bridge synthetic setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->setPhotoBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setShapeChange(II)V
    .locals 1
    .parameter "shapeID"
    .parameter "color"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iput p1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->selectedShapeId:I

    .line 1087
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iput p2, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->shapeColor:I

    .line 1088
    return-void
.end method

.method public setShapeMode()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 675
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 676
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 677
    return-void
.end method

.method public setTextMode()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 681
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 682
    return-void
.end method

.method public setTextSettingChange(IFI)V
    .locals 1
    .parameter "selectedId"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iput p2, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textSize:F

    .line 1092
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iput p3, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->textColor:I

    .line 1093
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleParams:Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;

    iput p1, v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView$DoodleParams;->selectedTextId:I

    .line 1094
    return-void
.end method

.method public undo(Z)Z
    .locals 3
    .parameter "undoFlag"

    .prologue
    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, canUndo:Z
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 616
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 617
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 618
    .local v1, removeDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 620
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleRemoved(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 623
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 627
    .end local v1           #removeDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    :cond_0
    :goto_0
    return v0

    .line 623
    .restart local v1       #removeDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
