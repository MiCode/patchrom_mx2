.class public Lcom/meizu/preference/ListPreferenceMz;
.super Landroid/preference/ListPreference;
.source "ListPreferenceMz.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/preference/ListPreferenceMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v0, 0x10900ab

    invoke-virtual {p0, v0}, Lcom/meizu/preference/ListPreferenceMz;->setLayoutResource(I)V

    .line 24
    return-void
.end method
