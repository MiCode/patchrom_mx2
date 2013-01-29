.class Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GLCanvasImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private mBlendEnabled:Z

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mLineWidth:F

.field private mTexEnvMode:I

.field private mTextureAlpha:F

.field private mTextureTarget:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/16 v1, 0xde1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const v3, 0x3df8f8f9

    .line 539
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 533
    iput v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 534
    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    .line 535
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 536
    iput v4, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 537
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mLineSmooth:Z

    .line 540
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 543
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 546
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 548
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 549
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 550
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 552
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 556
    invoke-interface {p1, v3, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 557
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 559
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 560
    const/16 v0, 0x303

    invoke-interface {p1, v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 563
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 564
    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0xbe2

    .line 621
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    if-ne v0, p1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 622
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mBlendEnabled:Z

    .line 623
    if-eqz p1, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 6
    .parameter "color"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x437f

    .line 592
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f733333

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 596
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 598
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 600
    ushr-int/lit8 v1, p1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x477fff00

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    div-float v0, v1, v5

    .line 601
    .local v0, prealpha:F
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 606
    return-void

    .end local v0           #prealpha:F
    :cond_1
    move v1, v2

    .line 592
    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 573
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mLineWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mLineWidth:F

    .line 575
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public setTexEnvMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 567
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTexEnvMode:I

    .line 569
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    .line 579
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 580
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureAlpha:F

    .line 581
    const v0, 0x3f733333

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 584
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 587
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method

.method public setTextureTarget(I)V
    .locals 2
    .parameter "target"

    .prologue
    .line 610
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    if-ne v0, p1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 614
    :cond_2
    iput p1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    .line 615
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0
.end method
