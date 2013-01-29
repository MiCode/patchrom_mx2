.class public abstract Lcom/android/gallery3d/ui/FadeTexture;
.super Ljava/lang/Object;
.source "FadeTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# instance fields
.field private final mHeight:I

.field private mIsAnimating:Z

.field private final mIsOpaque:Z

.field private final mStartTime:J

.field protected final mTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mWidth:I

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mHeight:I

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mIsOpaque:Z

    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FadeTexture;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mStartTime:J

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mIsAnimating:Z

    .line 43
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 47
    iget v4, p0, Lcom/android/gallery3d/ui/FadeTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/FadeTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/FadeTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 48
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mHeight:I

    return v0
.end method

.method protected getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FadeTexture;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/FadeTexture;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 76
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FadeTexture;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/ui/FadeTexture;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mIsAnimating:Z

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mIsAnimating:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FadeTexture;->mIsOpaque:Z

    return v0
.end method
