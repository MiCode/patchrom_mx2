.class public Lcom/android/gallery3d/photoeditor/actions/GrayscaleAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "GrayscaleAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public hasToolPannel()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/GrayscaleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/GrayscaleAction;->notifyOk()V

    .line 37
    return-void
.end method
