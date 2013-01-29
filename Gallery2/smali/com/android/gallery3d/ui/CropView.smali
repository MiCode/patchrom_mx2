.class public Lcom/android/gallery3d/ui/CropView;
.super Lcom/android/gallery3d/ui/GLView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/CropView$DetectFaceTask;,
        Lcom/android/gallery3d/ui/CropView$HighlightRectangle;,
        Lcom/android/gallery3d/ui/CropView$AnimationController;,
        Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

.field private mAspectRatio:F

.field private mCropCross:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

.field private mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mFlippable:Z

.field private mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

.field private mImageHeight:I

.field private mImageRotation:I

.field private mImageView:Lcom/android/gallery3d/ui/TileImageView;

.field private mImageWidth:I

.field private mMainHandler:Landroid/os/Handler;

.field private mMinHeightFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mMinWidthFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mMultiPoint:Z

.field private mNormalFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mSpotlightRatioX:F

.field private mSpotlightRatioY:F

.field private mTempRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, 0x4040

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 87
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    .line 88
    iput v1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 89
    iput v1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    .line 96
    new-instance v0, Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView$AnimationController;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    .line 98
    iput v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 99
    iput v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 104
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 116
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/CropView;->mFlippable:Z

    .line 120
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 121
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 122
    new-instance v0, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;-><init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/CropView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    .line 123
    new-instance v0, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;-><init>(Lcom/android/gallery3d/ui/CropView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/CropView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/CropView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/CropView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, -0xff7501

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFacePaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 137
    new-instance v0, Lcom/android/gallery3d/ui/CropView$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/CropView$1;-><init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mTempRect:Landroid/graphics/RectF;

    .line 147
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020063

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mNormalFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 148
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020062

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mCropCross:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mNormalFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    iput-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 150
    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/CropView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/gallery3d/ui/CropView;->updateCropSizeText()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mMinSizeFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mCropFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMinWidthFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mMinWidthFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMinHeightFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/NinePatchTexture;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView;->mMinHeightFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/NinePatchTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mNormalFrame:Lcom/android/gallery3d/ui/NinePatchTexture;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/CropView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/ui/CropView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/CropView;->mMultiPoint:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/ResourceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mCropCross:Lcom/android/gallery3d/ui/ResourceTexture;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/GLPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/CropView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$FaceHighlightView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$HighlightRectangle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/CropView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/CropView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/CropView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/CropView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/CropView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/CropView;->mFlippable:Z

    return v0
.end method

.method private setImageViewPosition(IIF)Z
    .locals 6
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 201
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    sub-int v0, v4, p1

    .line 202
    .local v0, inverseX:I
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    sub-int v1, v4, p2

    .line 203
    .local v1, inverseY:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    .line 204
    .local v3, t:Lcom/android/gallery3d/ui/TileImageView;
    iget v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 205
    .local v2, rotation:I
    sparse-switch v2, :sswitch_data_0

    .line 210
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 209
    :goto_0
    return v4

    .line 207
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 208
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 209
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateCropSizeText()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView;->getCropSizeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/CropImage;->updateCropSize(Ljava/lang/String;)V

    .line 938
    return-void
.end method


# virtual methods
.method public detectFaces(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "bitmap"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 894
    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 895
    .local v4, rotation:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 896
    .local v7, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 897
    .local v3, height:I
    const v8, 0x47ea6000

    mul-int v9, v7, v3

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    .line 901
    .local v5, scale:F
    div-int/lit8 v8, v4, 0x5a

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    .line 902
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 903
    .local v6, w:I
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 904
    .local v2, h:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 905
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 906
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v8, v4

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 907
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 908
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 920
    :goto_0
    new-instance v8, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;-><init>(Lcom/android/gallery3d/ui/CropView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->start()V

    .line 921
    return-void

    .line 910
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #faceBitmap:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v6           #w:I
    :cond_0
    int-to-float v8, v3

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v6, v8, -0x2

    .line 911
    .restart local v6       #w:I
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 912
    .restart local v2       #h:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 913
    .restart local v1       #faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 914
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 915
    int-to-float v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 916
    neg-int v8, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 917
    int-to-float v8, v6

    int-to-float v9, v3

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 918
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v12}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    return v0
.end method

.method public getCropRectangle()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v0

    .line 230
    .local v0, rect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 232
    .local v1, result:Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public getCropSizeString()Ljava/lang/String;
    .locals 5

    .prologue
    const/high16 v4, 0x4100

    .line 945
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 946
    .local v1, width:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 947
    .local v0, height:I
    int-to-float v2, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 948
    const/16 v1, 0x8

    .line 949
    :cond_0
    int-to-float v2, v0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 950
    const/16 v0, 0x8

    .line 952
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    return v0
.end method

.method public initializeHighlightRectangle()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setInitRectangle()V

    .line 925
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    .line 926
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 180
    sub-int v1, p4, p2

    .line 181
    .local v1, width:I
    sub-int v0, p5, p3

    .line 183
    .local v0, height:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mFaceDetectionView:Lcom/android/gallery3d/ui/CropView$FaceHighlightView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/CropView$FaceHighlightView;->layout(IIII)V

    .line 184
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->layout(IIII)V

    .line 185
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 186
    iget v2, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView$AnimationController;->parkNow(Landroid/graphics/RectF;)V

    .line 198
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 934
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    .line 217
    .local v0, a:Lcom/android/gallery3d/ui/CropView$AnimationController;
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/CropView$AnimationController;->calculate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView;->invalidate()V

    .line 218
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getCenterX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getCenterY()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->getScale()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/gallery3d/ui/CropView;->setImageViewPosition(IIF)Z

    .line 219
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 220
    return-void
.end method

.method public renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 224
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 225
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 930
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 8
    .parameter "ratio"

    .prologue
    const/4 v7, 0x0

    .line 153
    iget v5, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    .line 156
    iget v5, p0, Lcom/android/gallery3d/ui/CropView;->mAspectRatio:F

    const/high16 v6, -0x4080

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 158
    .local v0, centerX:F
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 159
    .local v1, centerY:F
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView;->mHighlightRectangle:Lcom/android/gallery3d/ui/CropView$HighlightRectangle;

    #getter for: Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->mHighlightRect:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/android/gallery3d/ui/CropView$HighlightRectangle;->access$100(Lcom/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v2

    .line 160
    .local v2, dstRect:Landroid/graphics/RectF;
    iget v5, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget v6, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 161
    .local v4, targetRatio:F
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView;->mTempRect:Landroid/graphics/RectF;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v7, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView;->mTempRect:Landroid/graphics/RectF;

    .line 163
    .local v3, srcRect:Landroid/graphics/RectF;
    invoke-static {v3, v2, v2}, Lcom/android/gallery3d/common/Utils;->fitRectFInto(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 164
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float v6, v1, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 165
    invoke-direct {p0}, Lcom/android/gallery3d/ui/CropView;->updateCropSizeText()V

    goto :goto_0
.end method

.method public setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V
    .locals 1
    .parameter "dataModel"
    .parameter "rotation"

    .prologue
    .line 879
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 880
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 881
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    .line 887
    :goto_0
    iput p2, p0, Lcom/android/gallery3d/ui/CropView;->mImageRotation:I

    .line 889
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 890
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView;->mAnimation:Lcom/android/gallery3d/ui/CropView$AnimationController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->initialize()V

    .line 891
    return-void

    .line 883
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageWidth:I

    .line 884
    invoke-interface {p1}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView;->mImageHeight:I

    goto :goto_0
.end method

.method public setFlippable(Z)V
    .locals 0
    .parameter "flippable"

    .prologue
    .line 941
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/CropView;->mFlippable:Z

    .line 942
    return-void
.end method

.method public setSpotlightRatio(FF)V
    .locals 0
    .parameter "ratioX"
    .parameter "ratioY"

    .prologue
    .line 174
    iput p1, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioX:F

    .line 175
    iput p2, p0, Lcom/android/gallery3d/ui/CropView;->mSpotlightRatioY:F

    .line 176
    return-void
.end method
