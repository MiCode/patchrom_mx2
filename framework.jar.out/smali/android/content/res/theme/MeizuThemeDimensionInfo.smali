.class public Landroid/content/res/theme/MeizuThemeDimensionInfo;
.super Ljava/lang/Object;
.source "MeizuThemeDimensionInfo.java"


# instance fields
.field mDimension:I

.field mPackageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "pkgTag"

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Landroid/content/res/theme/MeizuThemeDimensionInfo;->mDimension:I

    .line 8
    iput-object p2, p0, Landroid/content/res/theme/MeizuThemeDimensionInfo;->mPackageTag:Ljava/lang/String;

    .line 9
    return-void
.end method
