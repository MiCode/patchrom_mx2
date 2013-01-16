.class public Landroid/content/res/theme/MeizuThemeZipManager;
.super Ljava/lang/Object;
.source "MeizuThemeZipManager.java"


# instance fields
.field mSystemZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

.field mZipFramework:Landroid/content/res/theme/MeizuThemeZipFile;

.field mZipIcon:Landroid/content/res/theme/MeizuThemeZipFile;

.field mZipPackage:Landroid/content/res/theme/MeizuThemeZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/theme/MeizuThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipIcon:Landroid/content/res/theme/MeizuThemeZipFile;

    .line 14
    new-instance v0, Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/theme/MeizuThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipPackage:Landroid/content/res/theme/MeizuThemeZipFile;

    .line 15
    new-instance v0, Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/theme/MeizuThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipFramework:Landroid/content/res/theme/MeizuThemeZipFile;

    .line 16
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipIcon:Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/theme/MeizuThemeZipFile;->clean()V

    .line 42
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipPackage:Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/theme/MeizuThemeZipFile;->clean()V

    .line 43
    iget-object v0, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipFramework:Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/theme/MeizuThemeZipFile;->clean()V

    .line 44
    return-void
.end method

.method public getStreamFromFramework(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, iStream:Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipFramework:Landroid/content/res/theme/MeizuThemeZipFile;

    const-string v2, "framework-res"

    invoke-virtual {v1, v2, p1}, Landroid/content/res/theme/MeizuThemeZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getStreamFromIcon(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, iStream:Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipIcon:Landroid/content/res/theme/MeizuThemeZipFile;

    const-string v2, "icons"

    invoke-virtual {v1, v2, p1}, Landroid/content/res/theme/MeizuThemeZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "packageName"
    .parameter "filePath"

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, iStream:Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mZipPackage:Landroid/content/res/theme/MeizuThemeZipFile;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/theme/MeizuThemeZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public setSystemThemeManager(Landroid/content/res/theme/MeizuThemeZipManager;)V
    .locals 0
    .parameter "sysManager"

    .prologue
    .line 19
    iput-object p1, p0, Landroid/content/res/theme/MeizuThemeZipManager;->mSystemZipThemeManager:Landroid/content/res/theme/MeizuThemeZipManager;

    .line 20
    return-void
.end method
