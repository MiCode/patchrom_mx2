.class public Landroid/content/res/theme/MeizuThemeColorInfo;
.super Ljava/lang/Object;
.source "MeizuThemeColorInfo.java"


# instance fields
.field public mColor:J

.field mPackageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "pkgTag"

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Landroid/content/res/theme/MeizuThemeColorInfo;->mColor:J

    .line 8
    iput-object p3, p0, Landroid/content/res/theme/MeizuThemeColorInfo;->mPackageTag:Ljava/lang/String;

    .line 9
    return-void
.end method
