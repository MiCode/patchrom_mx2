.class public Landroid/content/res/theme/MeizuThemeXmlHelper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MeizuThemeXmlHelper.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_COLOR:Ljava/lang/String; = "color"

.field public static final TAG_DIMENSION:Ljava/lang/String; = "dimen"

.field public static final TAG_ROOT:Ljava/lang/String; = "meizu_theme_values"


# instance fields
.field private mAttrName:Ljava/lang/String;

.field private mAttrPkg:Ljava/lang/String;

.field private mCurrentFlag:Z

.field private mPreTag:Ljava/lang/String;

.field mThemeResource:Landroid/content/res/theme/MeizuThemeResource;


# direct methods
.method public constructor <init>(Landroid/content/res/theme/MeizuThemeResource;)V
    .locals 2
    .parameter "themeResource"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mPreTag:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mAttrPkg:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mAttrName:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mCurrentFlag:Z

    .line 20
    iput-object v0, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mThemeResource:Landroid/content/res/theme/MeizuThemeResource;

    .line 26
    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mCurrentFlag:Z

    .line 27
    iput-object p1, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mThemeResource:Landroid/content/res/theme/MeizuThemeResource;

    .line 28
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mPreTag:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 70
    .local v0, con:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mPreTag:Ljava/lang/String;

    const-string v4, "color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    new-instance v0, Ljava/lang/String;

    .end local v0           #con:Ljava/lang/String;
    const/4 v3, 0x1

    add-int/lit8 v4, p3, -0x1

    invoke-direct {v0, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 72
    .restart local v0       #con:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 73
    .local v1, data:J
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mThemeResource:Landroid/content/res/theme/MeizuThemeResource;

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mThemeResource:Landroid/content/res/theme/MeizuThemeResource;

    iget-object v4, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mAttrName:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mAttrPkg:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/res/theme/MeizuThemeResource;->addColorValue(Ljava/lang/String;JLjava/lang/String;)V

    .line 76
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mPreTag:Ljava/lang/String;

    goto :goto_0

    .line 77
    .end local v1           #data:J
    :cond_3
    iget-object v3, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mPreTag:Ljava/lang/String;

    const-string v4, "dimen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 56
    .local v0, tagName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "meizu_theme_values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mCurrentFlag:Z

    .line 61
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .end local v0           #tagName:Ljava/lang/String;
    :cond_1
    move-object v0, p3

    .line 55
    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 34
    .local v1, tagName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string/jumbo v2, "meizu_theme_values"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mCurrentFlag:Z

    .line 39
    :cond_0
    iget-boolean v2, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mCurrentFlag:Z

    if-eqz v2, :cond_1

    .line 40
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mAttrName:Ljava/lang/String;

    .line 42
    const-string/jumbo v2, "package"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mAttrPkg:Ljava/lang/String;

    .line 49
    :cond_1
    :goto_1
    iput-object p2, p0, Landroid/content/res/theme/MeizuThemeXmlHelper;->mPreTag:Ljava/lang/String;

    .line 50
    return-void

    .end local v1           #tagName:Ljava/lang/String;
    :cond_2
    move-object v1, p3

    .line 33
    goto :goto_0

    .line 43
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_3
    const-string v2, "dimen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, key:Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
