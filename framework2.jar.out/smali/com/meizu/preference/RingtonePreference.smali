.class public Lcom/meizu/preference/RingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "RingtonePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.meizu.preference.RingtonePreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "parent"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, view:Landroid/view/View;
    const/4 v3, 0x0

    .line 54
    .local v3, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 56
    const v4, 0x1020018

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #widgetFrame:Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 57
    .restart local v3       #widgetFrame:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 58
    .local v2, viewGroupParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 60
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 63
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 65
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    const/4 v4, 0x0

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 67
    invoke-virtual {p0}, Lcom/meizu/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .end local v0           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2           #viewGroupParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v1
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/meizu/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/meizu/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 39
    return-void
.end method
