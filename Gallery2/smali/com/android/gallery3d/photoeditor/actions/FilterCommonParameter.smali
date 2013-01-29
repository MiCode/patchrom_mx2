.class public Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
.super Ljava/lang/Object;
.source "FilterCommonParameter.java"


# static fields
.field private static instance:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;


# instance fields
.field private brightness:F

.field private colorTemperature:F

.field private contrast:F

.field private saturation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->instance:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f00

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->brightness:F

    .line 20
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->contrast:F

    .line 21
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->colorTemperature:F

    .line 22
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->saturation:F

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->instance:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;-><init>()V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->instance:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    .line 29
    :cond_0
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->instance:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    return-object v0
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->brightness:F

    return v0
.end method

.method public getColorTemperature()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->colorTemperature:F

    return v0
.end method

.method public getContrast()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->contrast:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->saturation:F

    return v0
.end method

.method public setAllParameterValue(FFFF)V
    .locals 0
    .parameter "brightnessValue"
    .parameter "contrastValue"
    .parameter "colorTemperatureValue"
    .parameter "saturationValue"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->brightness:F

    .line 41
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->contrast:F

    .line 42
    iput p3, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->colorTemperature:F

    .line 43
    iput p4, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->saturation:F

    .line 44
    return-void
.end method

.method public setBrightness(F)V
    .locals 0
    .parameter "brightnessValue"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->brightness:F

    .line 48
    return-void
.end method

.method public setColorTemperature(F)V
    .locals 0
    .parameter "colorTemperatureValue"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->colorTemperature:F

    .line 64
    return-void
.end method

.method public setContrast(F)V
    .locals 0
    .parameter "contrastValue"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->contrast:F

    .line 56
    return-void
.end method

.method public setDefaultValue()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f00

    .line 33
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->brightness:F

    .line 34
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->contrast:F

    .line 35
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->colorTemperature:F

    .line 36
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->saturation:F

    .line 37
    return-void
.end method

.method public setSaturation(F)V
    .locals 0
    .parameter "saturationValue"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->saturation:F

    .line 72
    return-void
.end method
