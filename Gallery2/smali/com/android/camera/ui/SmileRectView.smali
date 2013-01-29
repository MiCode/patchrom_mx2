.class public Lcom/android/camera/ui/SmileRectView;
.super Landroid/view/View;
.source "SmileRectView.java"


# static fields
.field private static FACE_COLOR:I


# instance fields
.field private mIsDrawSmileRect1:Z

.field private mIsDrawSmileRect2:Z

.field private mIsDrawSmileRect3:Z

.field private mIsDrawSmileRect4:Z

.field private mIsDrawSmileRect5:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPosArray1:[I

.field private mPosArray2:[I

.field private mPosArray3:[I

.field private mPosArray4:[I

.field private mPosArray5:[I

.field private mRectFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/SmileRectView;->FACE_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    .line 19
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    .line 20
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    .line 21
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    .line 22
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    .line 24
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect1:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect2:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect3:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect4:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect5:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    .line 41
    const v0, 0x3f63d70a

    iput v0, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x3f63d70a

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    .line 19
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    .line 20
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    .line 21
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    .line 22
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    .line 24
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect1:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect2:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect3:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect4:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect5:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iput v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/SmileRectView;->FACE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-ne v0, v1, :cond_1

    .line 54
    iput v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_0

    .line 56
    const v0, 0x3f5eb852

    iput v0, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect1:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    aget v0, v0, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect2:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    aget v0, v0, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect3:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    aget v0, v0, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect4:Z

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    aget v0, v0, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect5:Z

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    aget v0, v0, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/android/camera/ui/SmileRectView;->mRectFactor:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/SmileRectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    :cond_4
    return-void
.end method

.method public resetPosArray()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 81
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    .line 82
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    .line 83
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    .line 84
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    .line 85
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    .line 86
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect1:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect2:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect3:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect4:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect5:Z

    .line 91
    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setPosArray([II)V
    .locals 1
    .parameter "posArray"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 94
    packed-switch p2, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect1:Z

    .line 97
    iput-object p1, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray1:[I

    goto :goto_0

    .line 101
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect2:Z

    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray2:[I

    goto :goto_0

    .line 106
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect3:Z

    .line 107
    iput-object p1, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray3:[I

    goto :goto_0

    .line 111
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect4:Z

    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray4:[I

    goto :goto_0

    .line 116
    :pswitch_4
    iput-boolean v0, p0, Lcom/android/camera/ui/SmileRectView;->mIsDrawSmileRect5:Z

    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/SmileRectView;->mPosArray5:[I

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
