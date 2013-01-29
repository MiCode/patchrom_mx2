.class final Lcom/android/gallery3d/app/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/Config$AlbumPage;,
        Lcom/android/gallery3d/app/Config$AlbumSetPage;
    }
.end annotation


# static fields
.field private static final dimensionScale:F

.field private static resource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    sput v0, Lcom/android/gallery3d/app/Config;->dimensionScale:F

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/app/Config;->resource:Landroid/content/res/Resources;

    return-void

    .line 31
    :cond_0
    const v0, 0x3f4ccccd

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$000()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/gallery3d/app/Config;->resource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$002(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Lcom/android/gallery3d/app/Config;->resource:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getDimensionPixelSize(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 35
    sget-object v0, Lcom/android/gallery3d/app/Config;->resource:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/gallery3d/app/Config;->dimensionScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
