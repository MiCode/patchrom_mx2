.class public Lcom/android/gallery3d/photoeditor/actions/DoodleView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "DoodleView.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;
.implements Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;
.implements Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;
.implements Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;
    }
.end annotation


# instance fields
.field private final DEFAULT_PAINT_ALPHA:I

.field private final DEFAULT_PAINT_COLOR:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final displayMatrix:Landroid/graphics/Matrix;

.field private doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

.field private doodleColor:I

.field private final doodlePaint:Landroid/graphics/Paint;

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

.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private isVertical:Z

.field private final lastPoint:Landroid/graphics/PointF;

.field private listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

.field private mColorAlpha:I

.field private mDoodleMode:I

.field private mDoodlePaintSize:F

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

.field private mEraserPaintSize:F

.field private mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

.field private mPaintScale:F

.field private mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

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

.field private mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

.field private mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

.field private mUndoFlag:Z

.field private oldBoundsHeight:F

.field private oldBoundsWidth:F

.field private redoBtn:Landroid/widget/ImageButton;

.field private saveMenuItem:Landroid/view/MenuItem;

.field private screenWidth:I

.field private selectedShapeId:I

.field private shapeBtn:Landroid/widget/ImageButton;

.field private shapeColor:I

.field private shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

.field private final shapePaint:Landroid/graphics/Paint;

.field private textColor:I

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

.field private textSize:F

.field private undoBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x98

    const/4 v3, 0x0

    const/high16 v2, -0x1

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    .line 81
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    .line 82
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createEraserPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    .line 83
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    .line 85
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    .line 97
    iput-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    .line 112
    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->DEFAULT_PAINT_COLOR:I

    .line 113
    iput v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->DEFAULT_PAINT_ALPHA:I

    .line 114
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 115
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectedShapeId:I

    .line 118
    iput v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mColorAlpha:I

    .line 122
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    .line 136
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeColor:I

    .line 139
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textColor:I

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    .line 141
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    return-void
.end method

.method private addEditText(FF)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, -0x2

    const/high16 v10, 0x4000

    const/4 v8, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 297
    .local v1, group:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, edit:Landroid/widget/EditText;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 301
    .local v5, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 302
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v6, v7

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 303
    const/16 v6, 0x1e

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setMinimumWidth(I)V

    .line 304
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textColor:I

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 305
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    invoke-virtual {v0, v8, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 306
    const/high16 v6, 0x200

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 307
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 309
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 311
    .local v3, maxWidth:I
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v6, p2

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 312
    .local v2, maxHeight:I
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 313
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 314
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 315
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 316
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 318
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v6, :cond_0

    .line 319
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    .line 321
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v6, :cond_1

    .line 324
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 325
    .local v4, newPoint:Landroid/graphics/PointF;
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v6, v7

    sub-float v6, p2, v6

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 326
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->changeDoodleFirstPoint(Landroid/graphics/PointF;)V

    .line 328
    .end local v4           #newPoint:Landroid/graphics/PointF;
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    sub-float v7, p1, v7

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 329
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v7, v8

    sub-float v7, p2, v7

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 330
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addLastPointIntoDoodle()V

    .line 331
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->finishDoodle()V

    .line 333
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v1           #group:Landroid/widget/FrameLayout;
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v5           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private addLastPointIntoDoodle()V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->addControlPoint(Landroid/graphics/PointF;)Z

    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleChanged(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 476
    :cond_1
    return-void
.end method

.method private addTextString()V
    .locals 3

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->checkEditTextState()V

    .line 355
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 357
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

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkEditTextState()V
    .locals 4

    .prologue
    .line 362
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 377
    :cond_0
    return-void

    .line 364
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, textString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->removeEditText(Landroid/widget/EditText;)V

    .line 368
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v2, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleTextStringDelete(I)V

    .line 373
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v2, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onTextDoodleRemoved(I)V

    .line 364
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private drawAllDoodles(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 693
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 694
    .local v2, r:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 695
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

    .line 696
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

    .line 698
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 704
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 705
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/photoeditor/actions/Doodle;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 707
    .local v0, item:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    if-eqz v0, :cond_2

    .line 708
    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    goto :goto_1

    .line 700
    .end local v0           #item:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/photoeditor/actions/Doodle;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 712
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/gallery3d/photoeditor/actions/Doodle;>;"
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 713
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 714
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 715
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 717
    return-void
.end method

.method private drawDoodle(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 237
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
    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 250
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

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeHelper:Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeHelper;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 253
    return-void
.end method

.method private drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 7
    .parameter "doodle"

    .prologue
    .line 720
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 721
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    .line 722
    .local v6, drawPaint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    .line 724
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getPaintSize()F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 730
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 731
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 735
    .end local v6           #drawPaint:Landroid/graphics/Paint;
    :goto_1
    return-void

    .line 726
    .restart local v6       #drawPaint:Landroid/graphics/Paint;
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    .line 727
    const/high16 v0, -0x100

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 733
    .end local v6           #drawPaint:Landroid/graphics/Paint;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getSelectedShapeId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPonit()Landroid/graphics/PointF;

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
    .line 240
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 245
    :cond_0
    return-void
.end method

.method private finishDoodle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectToDraw(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleFinished(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDoodleMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 449
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 462
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 463
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 465
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 466
    return-void

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 381
    return-void
.end method

.method private redo(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 742
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 743
    .local v0, doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 744
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleFinished(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 749
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 753
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawSingleDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 754
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 755
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 756
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 757
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 758
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 760
    :cond_2
    return-void
.end method

.method private removeEditText(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 338
    .local v0, group:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 341
    .end local v0           #group:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private selectToDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 391
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    packed-switch v0, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawDoodle(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserDoodle(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    if-eqz v0, :cond_0

    .line 404
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeColor:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectedShapeId:I

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getDownPonit()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawShape(Landroid/graphics/Canvas;IILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 391
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
    .line 344
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 351
    :cond_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startDoodle()V
    .locals 8

    .prologue
    .line 413
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    packed-switch v0, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserPaintSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 416
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserPaintSize:F

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

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodlePaintSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodlePaintSize:F

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

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    .line 428
    .local v4, curPaintSize:F
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeColor:I

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectedShapeId:I

    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIIFLandroid/graphics/PointF;F)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->setDoodleContext(Landroid/content/Context;)V

    goto :goto_0

    .line 434
    .end local v4           #curPaintSize:F
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float v4, v0, v1

    .line 435
    .restart local v4       #curPaintSize:F
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textColor:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    new-instance v5, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v0, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(IIFLandroid/graphics/PointF;F)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;

    goto/16 :goto_0

    .line 413
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
    .line 738
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->drawAllDoodles(Landroid/graphics/Canvas;)V

    .line 739
    return-void
.end method

.method private updataShapeButtonSelected(I)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 689
    :goto_0
    return-void

    .line 660
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 670
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 675
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 680
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 685
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateEditTextLocation(IIFF)V
    .locals 12
    .parameter "width"
    .parameter "height"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 256
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    if-nez v9, :cond_0

    .line 292
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 262
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->editTextList:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 264
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v9

    mul-float v6, v9, p3

    .line 265
    .local v6, scaleSize:F
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 267
    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {v9}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 268
    .local v5, point:Landroid/graphics/PointF;
    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 269
    .local v7, x:I
    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 270
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

    .line 271
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

    .line 273
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
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

    .line 275
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

    .line 276
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
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

    .line 279
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

    .line 280
    .local v2, maxHeight:I
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 281
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 286
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #point:Landroid/graphics/PointF;
    .end local v6           #scaleSize:F
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_1
    new-instance v9, Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private updateSettingsWindow(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->update(IZ)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->dismiss()V

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->update(IZ)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->dismiss()V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->update(IZ)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->dismiss()V

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->update(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public checkEraserMode()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 565
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    .line 567
    :cond_0
    return-void
.end method

.method public clearDoodles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 797
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleRmovedAll()V

    .line 799
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->dismiss()V

    .line 805
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->dismiss()V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->dismiss()V

    goto :goto_0
.end method

.method public getDoodleMode()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 764
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 765
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    if-eqz v0, :cond_0

    .line 766
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undo(Landroid/graphics/Canvas;)V

    .line 767
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 785
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    if-eqz v0, :cond_1

    .line 772
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redo(Landroid/graphics/Canvas;)V

    .line 773
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 778
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 779
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->displayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 780
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 783
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectToDraw(Landroid/graphics/Canvas;)V

    .line 784
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onShapeChange(II)V
    .locals 0
    .parameter "shapeID"
    .parameter "color"

    .prologue
    .line 826
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectedShapeId:I

    .line 827
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeColor:I

    .line 828
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updataShapeButtonSelected(I)V

    .line 829
    return-void
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

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onSizeChanged(IIII)V

    .line 179
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getPhotoHeight()F

    move-result v4

    invoke-direct {v0, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 180
    .local v0, r:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
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

    .line 182
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodlePaintSize:F

    .line 183
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserPaintSize:F

    .line 184
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodlePaintSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserPaintSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
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

    .line 190
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->bitmapCanvas:Landroid/graphics/Canvas;

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

    .line 202
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->screenWidth:I

    .line 203
    if-le p2, p1, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    .line 204
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updateSettingsWindow(I)V

    .line 208
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsWidth:F

    div-float v1, v3, v4

    .line 209
    .local v1, scaleX:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsHeight:F

    div-float v2, v3, v4

    .line 210
    .local v2, scaleY:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsWidth:F

    .line 211
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->oldBoundsHeight:F

    .line 212
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updateEditTextLocation(IIFF)V

    .line 213
    return-void

    .line 203
    .end local v1           #scaleX:F
    .end local v2           #scaleY:F
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onTextSettingChangeListener(FI)V
    .locals 0
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 833
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textSize:F

    .line 834
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textColor:I

    .line 835
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 480
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 482
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 484
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 486
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 525
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 488
    .restart local v2       #x:F
    .restart local v3       #y:F
    :pswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 489
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 490
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 492
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v6

    .line 496
    .local v0, photoStartX:F
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v1, v4, v6

    .line 497
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

    .line 499
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->startDoodle()V

    .line 500
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addEditText(FF)V

    goto :goto_0

    .line 503
    .end local v0           #photoStartX:F
    .end local v1           #photoStartY:F
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->startDoodle()V

    goto :goto_0

    .line 508
    :pswitch_1
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 509
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 510
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addLastPointIntoDoodle()V

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    goto :goto_0

    .line 519
    :pswitch_2
    add-float v4, v2, v5

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mapPhotoPoint(FFLandroid/graphics/PointF;)V

    .line 520
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addLastPointIntoDoodle()V

    .line 521
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->finishDoodle()V

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveTextString()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    .line 572
    return-void
.end method

.method public setActionBarCustomView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    const v0, 0x7f0d0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    .line 150
    const v0, 0x7f0d0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 164
    :goto_1
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setEditMode(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 593
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    .line 595
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 596
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    if-nez v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    if-nez v0, :cond_1

    .line 598
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->setOnDoodlePaintParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$OnDoodlePaintParamsListener;)V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->show(Landroid/view/View;IZ)V

    .line 603
    :cond_2
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 604
    return-void
.end method

.method public setEraserMode(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    const/4 v3, 0x1

    .line 575
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 577
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    .line 579
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 580
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    if-ne v0, v3, :cond_2

    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->setOnEraserParamsListener(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$OnEraserParamsListener;)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserSettingDialog:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->show(Landroid/view/View;IZ)V

    .line 587
    :cond_2
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 588
    return-void
.end method

.method public setEraserPaintSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 789
    int-to-float v0, p1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserPaintSize:F

    .line 790
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->eraserPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mEraserPaintSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 791
    return-void
.end method

.method public setOnDoodleChangeListener(Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    .line 146
    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 820
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mColorAlpha:I

    .line 821
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    .line 822
    return-void
.end method

.method public setPaintColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 809
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mColorAlpha:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodleColor:I

    .line 810
    return-void
.end method

.method public setPaintSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 814
    int-to-float v0, p1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mPaintScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodlePaintSize:F

    .line 815
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->doodlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodlePaintSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 816
    return-void
.end method

.method public bridge synthetic setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->setPhotoBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setRedoFlag(Z)V
    .locals 2
    .parameter "redoFlag"

    .prologue
    const/4 v1, 0x1

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 550
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoFlag:Z

    .line 551
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 553
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 558
    :cond_1
    return-void
.end method

.method public setSaveMenuItem(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->textDoodle:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setShapeMode(Landroid/view/View;Landroid/widget/ImageButton;)V
    .locals 4
    .parameter "anchor"
    .parameter "shapeButton"

    .prologue
    const/4 v3, 0x2

    .line 607
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->hideInputMethod()V

    .line 609
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->addTextString()V

    .line 611
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 613
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    .line 615
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    if-ne v0, v3, :cond_3

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    if-nez v0, :cond_2

    .line 617
    new-instance v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->setOnShapeChangeListener(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;)V

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mShapeSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->show(Landroid/view/View;IZ)V

    .line 622
    :cond_3
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 623
    return-void
.end method

.method public setTextMode(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    const/4 v3, 0x3

    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setEditTextEnabled(Z)V

    .line 627
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    if-ne v0, v3, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    .line 630
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->setOnTextSettingChangeListener(Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mTextSettingDialog:Lcom/android/gallery3d/photoeditor/DoodleTextDialog;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->screenWidth:I

    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->isVertical:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->show(Landroid/view/View;IZ)V

    .line 634
    :cond_1
    iput v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodleMode:I

    .line 635
    return-void
.end method

.method public setUndoFlag(Z)V
    .locals 3
    .parameter "undoFlag"

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 530
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mUndoFlag:Z

    .line 531
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    .line 532
    .local v0, removeDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mRedoDoodles:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->listener:Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;->onDoodleRemoved(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->invalidate()V

    .line 537
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->mDoodles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->undoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 539
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->redoBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 546
    .end local v0           #removeDoodle:Lcom/android/gallery3d/photoeditor/actions/Doodle;
    :cond_1
    return-void
.end method

.method public updataShapeButton(Landroid/widget/ImageButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    .line 653
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->shapeBtn:Landroid/widget/ImageButton;

    .line 654
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->selectedShapeId:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->updataShapeButtonSelected(I)V

    .line 655
    return-void
.end method
