.class public Landroid/content/res/theme/MeizuThemeUtils;
.super Ljava/lang/Object;
.source "MeizuThemeUtils.java"


# static fields
.field public static final DEF_ICON:Ljava/lang/String; = "def_icon.png"

.field private static final DISPLAY:[Ljava/lang/String; = null

.field public static final FILE_THEME_VALUE:Ljava/lang/String; = "theme_values.xml"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final FRAMEWORK_PATH_NAME:Ljava/lang/String; = "framework-res"

.field public static final ICON_BACKGROUND:Ljava/lang/String; = "icon_background.png"

.field public static final ICON_MASK:Ljava/lang/String; = "icon_mask.png"

.field public static final ICON_PATH_NAME:Ljava/lang/String; = "icons"

.field public static final MX2_RES:Ljava/lang/String; = "res/drawable-sw400dp-xhdpi/"

.field public static final MX_RES:Ljava/lang/String; = "res/drawable-xhdpi/"

.field private static final PIXELS:[Ljava/lang/String; = null

.field public static final PNG:Ljava/lang/String; = ".png"

.field public static final SHORTCUT_BACKGROUND:Ljava/lang/String; = "shortcut_background.png"

.field public static final THEME_DATA_PATH:Ljava/lang/String; = "/data/mtheme/"

.field public static final THEME_DEBUG:Z = false

.field public static final THEME_DEBUG_TAG:Ljava/lang/String; = "MeizuTheme"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "800_1280"

    aput-object v1, v0, v2

    const-string v1, "640_960"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "800x1280"

    aput-object v1, v0, v2

    const-string v1, "640x960"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelDisplyPixels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    const-string v0, "M040"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/content/res/theme/MeizuThemeUtils;->PIXELS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getModelFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const-string v0, "M040"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/res/theme/MeizuThemeUtils;->DISPLAY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
